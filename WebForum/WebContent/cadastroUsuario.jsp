<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta charset="utf-8"/>
	<title>Cadastro Usuario</title>
</head>
<body>
	<h1>Cadastro de Usuario</h1>

	<form action="SalvarCadastroUsuario" method="post">

		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" id="nome" name="nome"
					required="required"></td>
			</tr>
			<tr>
				<td>Data de nascimento:</td>
				<td><input type="date" name="dataNascimento"
					pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" placeholder=" xx/xx/xxxx"
					required="required"></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><select name="sexo">
						<option value=""></option>
						<option value="masculino">Masculino</option>
						<option value="feminino">Feminino</option>
						<option value="outro">Outro</option>
				</select></td>
			</tr>
			<tr>
				<td>Telefone:</td>
				<td><input type="tel" id="telefone" name="telefone"
					placeholder="(xx) xxxxx-xxxx" required="required"></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><input type="text" id="endereco" name="endereco"
					required="required"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" id="email" name="email"
					placeholder="nome@exemplo.com" required="required"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" id="senha" name="senha"
					required="required"></td>
			</tr>

		</table>
		<br /> <input type="submit" value="Proximo">

	</form>
</body>
</html>