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

  <br/>
<%-- Sets the currency to the currency of the Locale within the request --%>
  <g:currencySelect
    name="myCurrency"
    value="${ Currency.getInstance(request.locale) }" />

  <br/>
<%-- Sets the locale to the locale of the request --%>
  <g:localeSelect name="myLocale" value="${ request.locale }" />

  <br/>
<%-- Sets value to default time zone --%>
  <g:timeZoneSelect name="myTimeZone" value="${ TimeZone.getDefault() }" />

</body>
</html>
