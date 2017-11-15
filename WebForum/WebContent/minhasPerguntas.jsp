 <%@page import="java.util.List"%>
 <%@page import="java.util.ArrayList"%>
 
  <%@page import="beans.Postagem"%>
  <%@page import="dao.DaoPostagem"%>
<%@include file="cabeçalho.jsp"%>
</head>
<body>
<%Postagem postagem = new Postagem();
DaoPostagem busca = new DaoPostagem();


postagem.setId((Integer)session.getAttribute("id"));
for(Postagem resposta: busca.buscarPostagem(postagem)){
	session.setAttribute("pergunta", resposta.getPergunta());
	session.setAttribute("descricao", resposta.getDescricao());
	session.setAttribute("idpostagem", resposta.getIdpostagem());
	
	%>
	
<a href="mostrarDados.jsp?codigo=<%= session.getAttribute("idpostagem")%>" ><%= session.getAttribute("pergunta")%></a><br>

	<% } %>
</body>
</html>