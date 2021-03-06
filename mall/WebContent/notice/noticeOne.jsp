<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="vo.*" %>
<%@ page import ="dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>공지 상세보기</title>
</head>
<body>
	<div class="container">
		<%
			/*
				클릭한 notice_id 요청하기 (request)
				id를 통해 해당하는 공지 정보를 불러오기 (where notice_id =?)
			*/
			
			request.setCharacterEncoding("utf-8");
			
			int noticeId = Integer.parseInt(request.getParameter("noticeId"));
			
			Notice noticeOne = new Notice();
			NoticeDao noticeDao = new NoticeDao();
			
			noticeOne = noticeDao.selectNoticeOne(noticeId);
			
		%>
		
		<div>
			<jsp:include page = "/inc/menu.jsp"></jsp:include> 
		</div>
		
		<h1><%=noticeOne.noticeId %>번 공지사항입니다.</h1> <!-- menu -->
		
		<div>&nbsp;</div>
		
		<div class ="row">
			<div class="col-sm-2"><%=noticeOne.noticeId %>번</div>
			<div class="col-sm-10">
				<h5><%=noticeOne.noticeTitle %> <span class="badge badge-light"><%=noticeOne.noticeDate %></span></h5>
			</div>	
		</div>
		
		<div>&nbsp;</div>
		
		<div style="width:600px; height:1200px; font-size: 25px;"><%=noticeOne.noticeContent %></div>
	</div>
</body>
</html>