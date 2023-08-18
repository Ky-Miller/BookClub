<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Share</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/main.css"/>
    <!-- For any Bootstrap that uses JS -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>    
</head>
<body>
<div class="container">
<div class="row">
<div class="col">
			<h1>Change your entry</h1>
		</div>
<div class="col text-end">
			<a href="/books">Back to the Shelves</a>
		</div>
</div>
<form:form class="form" action="/books/${book.id}" method="patch" modelAttribute="book">
<form:hidden path="reader"/>
	<div class="form-group">
		<label>Title</label>
		<form:input type="text" path="bookName" class="form-control"/>
		<form:errors path="bookName"/>
	</div>
	<div class="form-group">
		<label>Author</label>
		<form:input type="text" path="author" class="form-control"/>
		<form:errors path="author"/>
	</div>
	<div class="form-group">
		<label>My thoughts</label>
		<form:input type="text" path="thoughts" class="form-control"/>
		<form:errors path="thoughts"/>
	</div>		
	<input type="submit" value="submit" class="btn btn-primary">
	</form:form>
	</div>
</body>
</html>