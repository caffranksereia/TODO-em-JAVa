<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo</title>
</head>
<body>
	<%@ page import=" com.TODO.dao.todoDao, com.TODO.bean.todo, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j" %>
	
	<h1>Lista de TODO </h1>
	
	<%
		List<todo> list = todoDao.getAllTodo();
		request.setAttribute("list",list);
	%>
	<table>
		<tr>
			<th>id</th>
			<th>TODO</th>
		</tr>
		<a href="NovoTodo.jsp">Novo todo</a>
			<c:forEach items ="${list}" var="todo">
				<tr>
					<td>
						${t.getId()}
					</td>
					<td>
						${t.getTodo()}
					</td>
					<td><a href="EditarTodo.jsp?id=${t.getId()}">Editar</a></td>
					<td><a href="ExcluirTodo.jsp?id=${t.getId()}">Excluir</a></td>
				</tr>
			</c:forEach>
	</table>
</body>
</html>