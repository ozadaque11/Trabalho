<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8"/>
	<title>Login</title>
</head>
<body>
	<form action="LoginServlet" method="post">
		<!-- RETORNO DO LOGIN(MENSAGEM DE ERRO) -->
		<%
			if (request.getAttribute("status") == null)
				request.setAttribute("status", "");
		%>

		<p style="color: red;"><%=request.getAttribute("status")%></p>

		<table>
			<tr>
				<td><p>
						Email: <input type="email" name="email" id="email"
							required="required"></td>
			</tr>
			<tr>
				<td>Senha: <input type="password" id="senha" name="senha"
					required="required">
					</p></td>
			</tr>
			<tr>
				<td><input type="submit" value="  Logar  " onclick="salvar()" /></td>
			</tr>
			<p>
				Não tem uma conta?<br /> <a href="cadastroUsuario.jsp">
					Cadastre-se</a>
			</p>
		</table>
	</form>

</body>
</html>