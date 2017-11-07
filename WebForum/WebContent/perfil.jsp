<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8"/>
	<title>Perfil</title>
</head>

<body>
	<h1>Perfil</h1>
	<p>
		Usuario Logado:
		<%=session.getAttribute("nome")%></p>

	<form action="AtualizarCadastroUsuario" method="post">

		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" id="nome" name="nome"
					required="required" value="<%=session.getAttribute("nome")%>"></td>
			</tr>
			<tr>
				<td>Data de nascimento:</td>
				<td><input type="date" name="dataNascimento"
					pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" placeholder=" xx/xx/xxxx"
					required="required"
					value="<%=session.getAttribute("dataNascimento")%>"></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><select name="sexo">
						<option value=""><%=session.getAttribute("sexo")%></option>
						<option value="masculino">Masculino</option>
						<option value="feminino">Feminino</option>
						<option value="outro">Outro</option>
				</select></td>
			</tr>
			<tr>
				<td>Telefone:</td>
				<td><input type="tel" id="telefone" name="telefone"
					placeholder="(xx) xxxxx-xxxx" required="required"
					value="<%=session.getAttribute("telefone")%>"></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><input type="text" id="endereco" name="endereco"
					required="required" value="<%=session.getAttribute("endereco")%>"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" id="email" name="email"
					placeholder="nome@exemplo.com" required="required"
					value="<%=session.getAttribute("email")%>"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" id="senha" name="senha"
					required="required" value="<%=session.getAttribute("senha")%>"></td>
			</tr>
		</table>
		<br /> <input type="submit" value="Salvar"> <a
			href="apagarConta.jsp">Apagar conta</a>

	</form>


</body>
</html>