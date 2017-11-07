<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8" />
<title>Principal</title>
</head>
<body>
	<h1>Pagina Principal</h1>
	<p>
		Usuario Logado:
		<%=session.getAttribute("nome")%></p>
	<a href="perfil.jsp">perfil</a>
	<form action="PostagemServlet" method="post">
	Topico:
				<select name="topico">
						<option value=""></option>
						<option value="estruturaSequencial">Estrutura Sequencial</option>
						<option value="estruturaDeDecisao">Estrutura De Decisao</option>
						<option value="estruturaDeRepeticao">Estrutura De Repeticao</option>
						<option value="listas">Listas</option>
						<option value="funcoes">Funções</option>
						<option value="strings">Strings</option>
						<option value="arquivos">Arquivos</option>
						<option value="classes">Classes</option>
						
				</select><br>
		Pergunta:
		<input type="text" name="pergunta" >
		<br>Descrição:<br>
		<TEXTAREA NAME="descricao" ROWS=6 COLS=40>
        </TEXTAREA>
	
	<input type="submit" value="Postar">
	</form>
</body>
</html>