<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Coba Remote Link</title>
    <g:javascript library="jquery"/>
    <g:javascript library="jquery-ui"/>
    
    <r:layoutResources />
    
    <script>
      $(document).ready(function() {
        $('#tbSong').autocomplete({
          source: "/gTunes/CobaView/autoComplete",
          select: function(event, ui) {
            $("#idSong").val(ui.item.id);
          }
        });
      });
    </script>
    
  </head>
  <body>
    Referensi : http://javadeveloper.asia/grails-ajax-tutorial-remotelink-tag/
    <br/>

    <g:set var="firstNumber" value="${5}"/>
    <g:set var="secondNumber" value="${7}"/>
            
    <g:remoteLink controller="CobaView" action="renderString" update="mainContent">renderString</g:remoteLink>
    <br/>
    <g:remoteLink controller="CobaView" action="contohParams" update="mainContent"
                  params="${[a:firstNumber, b:secondNumber]}">conto parameter
    </g:remoteLink>
    <br/>
    
    <g:formRemote name="myForm" on404="alert('not found!')" update="mainContent"
              url="[controller: 'CobaView', action:'formRemote']">
    Nama : <g:textField name="tbNama"/>
    </g:formRemote>
    <br/>
    
    <div class="ui-widget">
      <g:textField name="idSong" disabled="true"/>
      Song : <g:textField name="tbSong"/>
    </div>
    <br/>
    
      
    <div id="mainContent" style='float: right; width: 80%; min-height: 500px; background-color: #c0ffc0;'>
      <p>This is the main content</p>
    </div>
  </body>
</html>
