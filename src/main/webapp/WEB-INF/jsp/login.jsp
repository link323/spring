<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<title>Fitness tracker login page</title>

<style type="text/css">
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body onload='document.f.j_username.focus();'>
	<h3>fitness tracker custom login page</h3>

	<c:if test="${not empty error}">
		<div class="errorblock">
			your login was unsuccessful<br /> Caused:
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
		</div>
	</c:if>

	<form action="j_spring_security_check" name="f" method="post">
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" name="j_username" value=""></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="j_password" value=""></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="Submit"
					value="Submit"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" name="reset"></td>
			</tr>
		</table>

	</form>
</body>

</html>