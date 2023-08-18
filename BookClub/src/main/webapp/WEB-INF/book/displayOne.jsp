<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/main.css"/>
    <!-- For any Bootstrap that uses JS -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>  
<meta charset="ISO-8859-1">
<title>Read Share</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-8">
		<h1><c:out value="${book.bookName}"></c:out></h1>
		</div>
		<div class="col-md-4 text-end">
			<a href="/books">Back to the shelves!</a>
		</div>
	</div>
	<div class="row">
	<h3><c:out value="${book.reader.userName}"></c:out> read <c:out value="${book.bookName}"></c:out> by <c:out value="${book.author}"></c:out>.</h3>
	</div>
	<div class="row">
	<h3>here are <c:out value="${book.reader.userName}"></c:out>'s thoughts:</h3>
		<div class="row">
		<p><c:out value="${book.thoughts}"></c:out></p>
		<div class="col">
		<a href="/books/edit/m/${book.id}"><button>Edit</button></a>
		<div class="col">
			<form action="/books/${book.id}" method="post">
			<input type="hidden" value="delete" name="_method">
			<input type="submit" value="Delete" class="btn btn-danger">
			</form>
		</div>
		</div>
		</div>
	</div>
</div>
</body>
</html>