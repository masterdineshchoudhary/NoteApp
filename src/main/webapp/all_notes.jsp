<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entities.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp"%>
<style>
body {
    font-family: 'Montserrat', sans-serif;
}
.card {
    font-family: 'Montserrat', sans-serif;
	margin: 15px;
	padding:10px;
	box-shadow: 0px 1px 2px 0 rgba(0,0,0,0.1);
    border-radius: 6px;
    box-sizing: border-box;
    align-items: center;
    float: left;
    width: 15rem;
    border: 2px;
}
.card:hover {
    box-shadow: 1px 2px 4px 0 rgba(0,0,0,0.2);
}
</style>

</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>
		<h1 class="text">All Notes</h1>
		<br>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card">
					<img class="card-img-top" src="img/note.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"><%= note.getContent() %></p>
						<p><b class="card-text text-primary"><%= note.getAddedDate() %></b></p>
					</div>
					<div class="button mb-3">
						<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>					
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>