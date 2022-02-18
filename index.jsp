<%@ page errorPage="errorPage.jsp" %>

<%
  class Calculator {
    private int p1, p2;
    private double result;
    private String op;

    public Calculator(int p1, int p2, String op) {
      this.p1 = p1;
      this.p2 = p2;
      this.op = op;
    }

    public double calculate() {
      switch (this.op) {
        case "add":
          result = this.p1 + this.p2;
          break;
        
        case "sub":
          result = this.p1 - this.p2;
          break;

        case "mul":
          result = this.p1 * this.p2;
          break;

        case "div":
          result = (this.p1 * 1.0) / this.p2;
          break;

        default:
          throw new Error("Invalid operation");
      }

      return this.result;
    }
  }
%>

<%
  int p1, p2;

  String param1 = request.getParameter("p1");
  String param2 = request.getParameter("p2");
  String op = request.getParameter("op");

  try {
    p1 = Integer.parseInt(param1);
    p2 = Integer.parseInt(param2);
  } catch (Exception e) {
    p1 = 0;
    p2 = 0;
  }

  Calculator c = new Calculator(p1, p2, op);
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
  <form action="index.jsp" method="get">
    <input type="number" name="p1" id="p1" required />
    <input type="number" name="p2" id="p2" required />
    <select name="op" id="op" required>
      <option value="add">+</option>
      <option value="sub">-</option>
      <option value="mul">*</option>
      <option value="div">/</option>
    </select>

    <button type="submit">Calculate</button>
      Result: 
        <%
          if (op != null) {
            out.print(c.calculate());
          }
        %>
  </form>

  <a href="report.jsp">Report</a>

</body>

</html>