<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.vigplan.vo.BoardVo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
table th {
	text-align: center;
}

.table {
	margin-top: 20px;
	margin-left: 100px;
	width: 50% !important;
	
}

div.absolute {
  position: absolute;
  width: 35%;
  bottom: 150px;
  right: 10px;

} 

div.title {
	position: absolute;
	left: 10px;
	margin-left: 585px;
}

div.button {
	position: absolute;
	margin-left: 855px;
	margin-top: 400px;
}

</style>

</head>
<body>
	<%
		BoardVo item = (BoardVo) request.getAttribute("item");
	%>
<%-- 	<div class="container">
		<br> <br>
		<h2>수정하기</h2>
		<br>
		<form class="form-inline" action="<%=request.getContextPath()%>/board"
			method="POST">
			
			<input type="hidden" name="a" value="editer">
			<input type="hidden" name="id" value="<%= item.getId() %>">
			<div class="form-group">
				<label for="title" class="mb-2 mr-sm-2">제목</label> 
				<input type="text" class="form-control mb-2 mr-sm-2" name="title"
					value="<%= item.getTitle()%>">
			</div>

			<div class="form-group">
				<label for="content" class="mb-2 mr-sm-2">수정 내용:</label> 
				<input type="text" class="form-control mb-2 mr-sm-2" name="content"
					value="<%= item.getContent() %>">
			</div>

			<!-- div class="form-group">
				<label for="id" class="mb-2 mr-sm-2">id:</label> <input type="text"
					class="form-control mb-2 mr-sm-2" name="id">
			</div -->

			<button type="submit" class="btn btn-primary mb-2">수정완료</button>
		</form>
	</div> --%>

<body>
	<div class="container" align="left">
		<br> 
		<br>
		<div class="title">
		<h3>수정하기</h3>
		</div>
		<br>
		
		<form class="form-inline"
			action="<%=request.getContextPath()/*ServletStudy*/%>/board"
			method="POST" enctype="multipart/form-data">
			<input type="hidden" name="a" value="editer">
			<input type="hidden" name="id" value="<%= item.getId() %>">
			<div class="table">
			<table class="table" border="2" width="500">

				<tr>
					<td align="center">제목</td>
					<td><input type="text" size="40" name="title" value="<%= item.getTitle() %>"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea cols="100" rows="20" name="content"><%= item.getContent()%>
					
					</textarea>
					</td>
				</tr>
		
				<tr>
					<td align="center">파일 첨부</td>
					<td><input type="file" name="filename1" size=40 ><input type="text" value="<%= item.getFilename1() %>"></td>
				</tr>
				
			</table>
			</div>
			<br>
				<div class="button">
				<button type="submit" class="btn btn-primary btn-md">수정 완료</button>
			</div>
		</form>
	</div>
	
	
	
</body>
</html>