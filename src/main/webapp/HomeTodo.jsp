<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo</title>
</head>
<body>
	<%@ page import=" com.TODO.dao.todoDao, com.TODO.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j" %>
	
	<h1>Lista de TODO </h1>
	
	<%
		List<todo> list = todoDao.getAllTodo();
		request.setAttribute("list",list);
	%>
	<table>
		<tr>
			<th>TODO</th>
		</tr>
		<c:forEach items ="${list}" var="todo">
			<tr>
				<td>
					${todo.getTodo()}
				</td>
				<td>
					<a href="EditarTodo.jsp?id=${todo.getTodo() }">Editar</a>
					<a href="ExcluirTodo.jsp?id=${todo.getTodo() }">Excluir</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>