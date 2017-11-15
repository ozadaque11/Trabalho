
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>
<%@include file="cabeçalho.jsp"%>

<link rel="stylesheet" type="text/css" href="css/paginaInicial.css">
</head>
<body>
	<div id="container">
		<div id="pesquisa">
			<form action="paginaInicial.jsp" method="get">
				<ul>

					<button type="submit" name="pesquisa" value="estruturaSequencial">
						Estrutura Sequencial</button>
					<button type="submit" name="pesquisa" value="estruturaDeDecisao">Estrutura
						De Decisao</button>
					<button type="submit" name="pesquisa" value="estruturaDeRepeticao">Estrutura
						De Repeticao</button>
					<button type="submit" name="pesquisa" value="listas">Listas</button>
					<button type="submit" name="pesquisa" value="funcoes">Funções</button>
					<button type="submit" name="pesquisa" value="strings">Strings</button>
					<button type="submit" name="pesquisa" value="arquivos">Arquivos</button>
					<button type="submit" name="pesquisa" value="classes">Classes</button>
				</ul>




			</form>
		</div>
	</div>
	<%
		Postagem topico = new Postagem();
		DaoPostagem busca = new DaoPostagem();
		topico.setTopico(request.getParameter("pesquisa"));
		if (topico.getTopico()== null) {
			topico.setTopico("classes");
		} else {
			topico.setTopico(request.getParameter("pesquisa"));
		}
		for (Postagem resposta : busca.buscarTopico(topico)) {
			session.setAttribute("pergunta", resposta.getPergunta());
			session.setAttribute("descricao", resposta.getDescricao());
	%>
	<a href="mostrarDados.jsp"><%=session.getAttribute("pergunta")%></a>
	<br>
	<%
		}
	%>


</body>
</html>