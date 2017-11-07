 <%@page import="java.util.ArrayList"%>
  <%@page import="beans.Postagem"%>
  <%@page import="dao.DaoPostagem"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retorno</title>
</head>
<body>
<h1>Retorno busca</h1>
<%Postagem topico = new Postagem();
DaoPostagem busca = new DaoPostagem();

topico.setTopico(request.getParameter("pesquisa"));
for(Postagem resposta: busca.buscarTopico(topico)){
	session.setAttribute("pergunta", resposta.getPergunta());
	session.setAttribute("pergunta", resposta.getDescricao());%>
<a href="mostrarDados.jsp"><%= session.getAttribute("pergunta")%></a><br>
	<%} %>
	
</body>
</html>