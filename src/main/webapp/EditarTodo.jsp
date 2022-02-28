<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar TODO</title>
</head>
<body>
	<%@ page import= "com.TODO.dao.todoDao, com.TODO.bean.todo"%>
	
	<%
		String id = request.getParameter("id");
		todo t = todoDao.getIdTodo(Integer.parseInt(id));
	
	%>
	
	<h1>
		Editar Todo
	</h1>
	
	<form action="editTodo.jsp" method="post">
		<input type="hidden" name="id" value="<%=t.getId()%>"/>
		<table>
			<tr>
				<td>Todo:</td>
				<td><input type="text" name="nome" value="<%=t.getTodo()%>" ></td>
			
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar Todo"></input></td>
			</tr>
		
		</table>
	</form>
</body>
</html>