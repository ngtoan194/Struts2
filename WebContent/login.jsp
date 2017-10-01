<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yellow Hotel</title>
<link rel="stylesheet" href="css/logincss.css" type="text/css"
	media="all">
<script>
	$('.message a').click(function() {
		$('form').animate({
			height : "toggle",
			opacity : "toggle"
		}, "slow");
	});
</script>
</head>
<body>

	<div class="login-page">
		<div class="form">
			<s:form action="process-login.html" method="post">
			<s:actionerror/>
				<table>
					<tr>
						<td><s:textfield placeholder="Tên đăng nhập" name="username"></s:textfield></td>
					</tr>
					<tr>
						<td><s:password placeholder="Mật khẩu" name="pass"> </s:password></td>
					</tr>
					<tr>
						<td><s:submit value="Đăng nhập"></s:submit></td>
					</tr>
				</table>
			</s:form>
			<%
				String message = (String) request.getAttribute("message");
				if (!(message == null)) {
					out.println(message);
				} else {
					message = "";
					out.println(message);
				}
			%>
		</div>
	</div>
</body>
</html>