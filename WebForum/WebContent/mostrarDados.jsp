 <%@page import="beans.Respostas"%>
<%@page import="java.util.ArrayList"%>
  <%@page import="beans.Postagem"%>
  <%@page import="dao.DaoPostagem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%= session.getAttribute("pergunta")%>
		<%= session.getAttribute("descricao")%>
		<p>Respostas:</p><br>
		<%
		Respostas msg = new Respostas();
		DaoPostagem busca = new DaoPostagem();
		
		
	
		msg.setId_postagem(Integer.parseInt( request.getParameter("codigo")));
		for(Respostas resposta: busca.buscarRespostas(msg)){
			session.setAttribute("resposta", resposta.getMensagem());
			%>
		<a href="mostrarDados.jsp"><%= session.getAttribute("resposta")%></a><br>
			<%} %>
		
		
	</body>
</html>