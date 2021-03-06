<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member" %>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>

	/* header */
	#header {height: 100px;}
	#header > div {
		height: 100%;
		float: left;
		box-sizing: border-box;
	}
	#header a {text-decoration: none;}

	/* header > login-area */
	#logo-area {
		width: 250px;
		text-align: center;
	}
	#logo {
		width: 200px;
		margin: auto;
		margin-top: 10px;
	}
	#logo > a {
		color: rgb(232, 191, 123);
		font-size: 50px;
		font-weight: bold;
	}

	/* header > menubar-area */
	#menubar-area {
		width: 660px;
		padding-top: 60px;
		text-align: center;
	}
	#menubar {margin-right: 10px;}
	#menubar > a {
		color: black;
		font-size: 23px;
		font-weight: bold;
		margin-left: 35px;
		margin-right: 35px;
	}
	#menubar > a:hover {color: rgb(155, 128, 82);}

	/* header > login-area */
	#login-area {width: 290px;}
	#login-area > div {box-sizing: border-box;}
	#login-info {
		width: 100%;
		height: 60px;
		color: black;
		font-size: 18px;
		font-weight: bold;
		text-align: left;
		display: flex;
	}
	#login-info > div {
		height: 100%;
		line-height: 57.33px;
		float: left;
	}
	#profile {
		width: 22%;
		display: flex;
		margin-left: 10px;
	}
	#profile > img {
		border: 1px solid rgb(125, 125, 125);
		border-radius: 70%;
		margin: auto;
	}
	#user-class {
		width: 30%;
		text-align: center;
	}
	#user-nickname {
		width: 48%;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	#login-menu {text-align: center;}
	#login-menu > a {color: rgb(125, 125, 125);}
	
</style>
</head>
<body>
	
	<script>
	
		// ?????? ?????????(??????)
		var msg = "<%= alertMsg %>";
		
		if (msg != "null") {

			alert(msg);
			<% session.removeAttribute("alertMsg"); %>
		}
		
	</script>

	<!-- header -->
	<div id="header">

		<!-- ?????? -->
		<div id="logo-area">
			<div id="logo">
				<a href="<%= contextPath %>">PETMILY</a>
			</div>
		</div>

		<!-- ???????????? -->
		<div id="menubar-area">
			<div id="menubar">
				<a href="">????????????</a>
				<a href="">????????????</a>
				<a href="">?????????</a>
				<a href="">????????????</a>
			</div>
		</div>
		
		<!-- ????????? ????????? ???????????? login-area -->
		<% if(loginUser != null) { %>
		
			<div id="login-area">

				<!-- ????????? ?????? ??????(????????? ??????, ????????????, ?????????) -->
				<div id="login-info">

					<!-- ????????? ?????? -->
					<div id="profile">
						<img src="<%= contextPath %>/resources/blank-profile-picture.png" height="70%">
					</div>

					<!-- ???????????? -->
					<div id="user-class">
						<% 
							String userClass = "";
						
							switch (loginUser.getUserClass()) {
							
								case "A" : userClass = "?????????"; break;
								case "G" : userClass = "??????"; break;
								case "P" : userClass = "??????"; break;
							}
						%>
						[<%= userClass %>]
					</div>

					<!-- ????????? -->
					<div id="user-nickname">
						<%= loginUser.getUserNickname() %>
					</div>
					
				</div>

				<!-- ????????? ??? ???????????? login-menu -->
				<div id="login-menu">
					<a href="<%= contextPath %>">HOME</a>
					&nbsp;&nbsp;&vert;&nbsp;&nbsp;
					<a href="">???????????????</a>
					&nbsp;&nbsp;&vert;&nbsp;&nbsp;
					<a href="<%= contextPath %>/logout.me">????????????</a>
				</div>

			</div>
			
		<!-- ????????? ????????? ???????????? login-area -->
		<% } else { %>
		
			<div id="login-area">

				<!-- ????????? ?????? ??????(??????????????? ?????? ??????) -->
				<div id="login-info">
					<div id="profile-picture"></div>
					<div id="user-nickname"></div>
				</div>

				<!-- ????????? ??? ???????????? login-menu -->
				<div id="login-menu">
					<a href="<%= contextPath %>">HOME</a>
					&nbsp;&nbsp;&vert;&nbsp;&nbsp;
					<a href="<%= contextPath %>/enrollForm.me">????????????</a>
					&nbsp;&nbsp;&vert;&nbsp;&nbsp;
					<a href="<%= contextPath %>/loginForm.me">?????????</a>
				</div>

			</div>
			
		<% } %>

	</div>

</body>
</html>