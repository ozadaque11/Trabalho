<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8"/>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	
		<div id="container">
		<div id="cabeca">
			
			<img src="imagens/pyquestion.png">
			
			<div id="form">
				<form action="LoginServlet" method="post">
		<!-- RETORNO DO LOGIN(MENSAGEM DE ERRO) -->
		<%
			if (request.getAttribute("status") == null)
				request.setAttribute("status", "");
		%>

		<p style="color: red;"><%=request.getAttribute("status")%></p>
				
					<div class="form-input">
						<input type="email" name="email" placeholder="E-mail">	
					</div>
					
					<div class="form-input">
						<input type="password" name="senha" placeholder="Senha">
					</div>

					<div class="organizador">
						<div id="entrar" >
						
							<input type="submit" value="  ENTRAR  " id="btnlogin" onclick="salvar()" >
						</div>
					</div>
					<h4> Não tem uma conta?<br /> <a href="cadastroUsuario.jsp">
				Cadastre-se já!</a></h4>
					</form>
					</div>

		</div>
	</div>
	
	

</body>
</html>
