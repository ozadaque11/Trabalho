<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina Inicial </title>
</head>
<body>
<form action="paginaRetornoBusca.jsp" method="get">
topico:<select name="pesquisa">
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
				<input type="submit" value="pesquisar">


</form>



</body>
</html>