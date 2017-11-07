<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8"/>
	<title>Apagar Conta</title>
</head>
<body>
	<h1>Apagar conta</h1>
	Usuario Logado:
	<%=session.getAttribute("nome")%></p>
	<form action="ApagarConta" method="post">
		<input type="submit" value="Excluir Conta">
	</form>
</body>
</html>