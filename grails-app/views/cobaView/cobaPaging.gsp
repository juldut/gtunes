<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Coba Paging - Song</title>
  </head>
  <body>
    <div>
      <table>
        <thead>
                <tr>
                        <g:sortableColumn property="title" title="${message(code: 'song.title.label', default: 'Title')}" />
                </tr>
        </thead>
        <tbody>
        <g:each in="${songInstanceList}" status="i" var="songInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${songInstance.id}">${fieldValue(bean: songInstance, field: "title")}</g:link></td>
                </tr>
        </g:each>
        </tbody>
      </table>    
      <div class="pagination">
        <g:paginate total="${songInstanceTotal}" maxsteps="2"/>
      </div>
    </div>

  </body>
</html>
