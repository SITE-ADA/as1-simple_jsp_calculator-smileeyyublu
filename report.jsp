<%
  String ua = request.getHeader("user-agent");
%>

<html>
  <head>
    <title>Assignment 1 - Ismayil Eyyublu</title>
  </head>

  <body>
    <div>
      <p>User agent</p>
      <p><%=ua%></p>
    </div>
  </body>
</html>
