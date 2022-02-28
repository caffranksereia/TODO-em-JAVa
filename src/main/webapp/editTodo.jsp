<%@ page  import= "com.TODO.dao.todoDao"%>
<jsp:useBean id="u" class=" com.TODO.bean.todo"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int i = todoDao.Update(u);
response.sendRedirect("HomeTodo.jsp");


%>