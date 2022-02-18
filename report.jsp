<%
  String userAgent = request.getHeader("user-agent");
%>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Assignment 1 - Ismayil Eyyublu</title>
  </head>

  <body>
    <div>
      <p>User agent</p>
      <p><%=userAgent%></p>
    </div>
  </body>
  
  </html>