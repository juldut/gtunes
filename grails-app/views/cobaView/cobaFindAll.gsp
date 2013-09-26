<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Coba Find All</title>
  </head>
  <body>
  <g:each in="${pengguna}">
    ${it.login}<br/>
  </g:each>

  <ul>
  <g:findAll in="${pengguna}" expr="${it.login.contains("fa")}">
    <li>${it.login}</li>
  </g:findAll>
  </ul>
  
</body>
</html>
