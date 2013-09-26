<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Coba Date Picker</title>
  </head>
  <body>
    <g:datePicker name="myDate" value="${new Date()}" />
    <br/>
    <g:datePicker name="myDateTanggal" value="${new Date()}" precision="day"/>
  </body>
</html>
