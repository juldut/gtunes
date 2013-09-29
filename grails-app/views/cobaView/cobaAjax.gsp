<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Coba Ajax</title>
    <g:javascript library="jquery"/>    
    <r:layoutResources />
  </head>
<body>
<g:link action="showTime" elementId="timeLink">Show the time!</g:link>
<div id="time">
</div>

<r:script>
  $('#timeLink').click(function() {
    $('#time').load(this.href); 
    return false;
  });
</r:script>
<r:layoutResources />

</body>
</html>
