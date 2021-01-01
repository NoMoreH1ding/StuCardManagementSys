<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

<div style="background-color:rgba(200,200,200,0.5); margin-top:5em;padding:1em">
	<div>
		<img src="./images/logo.png" style="height:60px"/>
	</div>
	<div style="text-align:center">
		<h2>登陆网上书城</h2>
		<%
		/*
			String status = request.getParameter("status");
			String message = request.getParameter("msg");
			
			if (status != null && status.equals("error")) {
				out.println("<div style='color:red;font-size:0.8em'>" + message + " </div>");
			}
			*/
			
			Boolean status = (Boolean)request.getAttribute("status");
			String message = (String)request.getAttribute("msg");
			
			if (status != null && status == Boolean.FALSE) {
				out.println("<div style='color:red;font-size:0.8em'>" + message + " </div>");
			}
			
		%>
		<form action="./login" method="POST">
			用户: <input type="text" name="user"/> <p/>
			密码: <input type="password" name="pass"/> <p/>
			验证: <input type="text" name="secrete"/> <p/>
			<img src="./authImage" /> <p/>
			<input type="submit" value="登 陆"> <p/>
		</form>
	</div>
</div>

</body>
</html>