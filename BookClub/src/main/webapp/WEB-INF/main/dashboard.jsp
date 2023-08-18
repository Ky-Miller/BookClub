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
<title>ReadShare</title>
</head>
<body>
	<div class="container">
<div class="row">
			<div class="row">
				<div class="col-md-8">
					<h1>Welcome, <c:out value="${loginUser.userName}"></c:out></h1>
				</div>
				<div class="col-md-4 text-end">
					<a href="/logout" class="link-opacity-100-hover">logout</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<p>Books from everyone's shelves:</p>
				</div>
				<div class="col-md-4 text-end">
					<a href="/books/new">+ Add a book to my shelf!</a>
				</div>
			</div>
			<div class = "row">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Title</th>
							<th scope="col">Author Name</th>
							<th scope="col">Posted By</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="eachBook" items="${allBooks}">
							<tr>
								<th><a href="/books/${eachBook.id}"><c:out value="${eachBook.id}"></c:out></a></th>
								<td><c:out value="${eachBook.bookName}"></c:out></td>
								<td><c:out value="${eachBook.author}"></c:out></td>
								<td><c:out value="${eachBook.reader.userName}"></c:out></td>				
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>