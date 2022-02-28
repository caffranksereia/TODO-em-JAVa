<%@ page import="com.TODO.dao.todoDao, com.TODO.bean.*, java.util.*"%>
<jsp:useBean id="u" class="com.TODO.dao.todoDao"></jsp:useBean>
<jsp:setProperty property ="*" name="u"></jsp:setProperty>


<%
	int i = todoDao.salvarTodo(u);

	if(i > 0)

%>