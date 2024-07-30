<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>연산결과</h2>
<% 
	try { 
		// 1. num1, num2 parameter 받기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2")); 
		// 2. 사칙연산 + - * / 출력하기
		out.println(num1 + " + " + num2 + " = " + (num1+num2)+"<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2)+"<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2)+"<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2)+"<p>");
		// 3. NumberFormatException => 그게 숫자냐
		//	  ArithmeticException	=> 헐 0으로 나누다니 !
		//	  Exception				=> e.getMessage()
		} catch (NumberFormatException e) {
			out.println("그게 숫자냐");
		} catch (ArithmeticException e) {
			out.println("헐 0 으로 나누다니 !");
		} catch (Exception e) {
			out.println(e.getMessage());
		}
%>
</body>
</html>