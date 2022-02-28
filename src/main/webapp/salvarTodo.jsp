<%@ page import="com.TODO.dao.todoDao"%>
<jsp:useBean id="u" class="com.TODO.dao.todoDao"></jsp:useBean>
<jsp:setProperty property ="*" name="u"></jsp:setProperty>


<%
	int i = todoDao.salvar(u);

	if (i>0){
		response.sendRedirect("todosucess.jsp");
		
	}else{
		response.sendRedirect("Todonovoerror.jsp");
	}
%>