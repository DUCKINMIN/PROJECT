<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

 <link href="https://fonts.googleapis.com/css?family=JejuGothic" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<style type="text/css">
.header {
	background: #262626;
	/* height: 80px; */
}

#nav li a strong {
	font-size: 18px;
	color:#fff;
}

.nav_main:hover {
	border-bottom:6px solid rgb(162,0,0);
}

#user_img {
	border-radius: 50%;
	margin-right: 7px;
}

#navbar-main {
	line-height: 100px;
	margin-right: 15px;
}

#logo_img {
	width: 180px;
	padding: 20px;
}

.dropdown-menu {
	-webkit-box-shadow: none;
	box-shadow: none;
	border:none;
}

#dropdown_sub h5 {
	font-size:15px;
	color:#fff;
} 
#dropdown_sub {
	border:none;
}
#dropdown_sub:hover {
	background:#262626;
} 

.navbar-inverse 

.navbar-inverse .navbar-nav > .open > a:focus,
.navbar-inverse .navbar-nav > .open > a:hover {
	background:#262626;
}
/* .navbar-inverse .navbar-nav > .open > a:focus {
	color:#9d9d9d;
} */
#footer {
	background:#262626;
	width:100%;
	height:120px;
	position: relative;
    left: 0;
    bottom: 0;
    padding-top:40px;
    color:rgb(170,170,170);
}
#footer span {
	font-size:12px;
	
}
</style>

</head>
<nav class="navbar navbar-inverse navbar-fixed-top header">
<div class="container-fluid" >
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a href="main.jsp" class="" style="color: white"> <img
			id="logo_img" src="../image/logo1.png">
		</a>
	</div>
	<div class="navbar-collapse collapse">
		<ul class="nav navbar-nav" id="nav">
			<c:if test="${sessionScope.id==null }">
				<li class="nav_main"><a href="main.jsp?mode=1"><strong>HOT3</strong></a></li>
			</c:if>
			<c:if test="${sessionScope.id!=null }">
				<li><a href="main.jsp?mode=3"><strong>�̺�Ʈ</strong></a></li>
			</c:if>
			<li class="nav_main"><a href="main.jsp?mode=2"><strong>�̺�Ʈ</strong></a></li>
			<c:if test="${sessionScope.id!=null }">
				<li><a href="main.jsp?mode=4">��õ ����</a></li>
				<li><a href="main.jsp?mode=5">���� ����</a></li>
			</c:if>
			<li class="dropdown nav_main"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><strong>Ŀ�´�Ƽ<b class="caret"></b></strong>
			</a>
				<ul class="dropdown-menu">
					<li><a id="dropdown_sub" href="../music/main.jsp?mode=6"><h5>����</h5></a></li>
					<li><a id="dropdown_sub" href="../music/main.jsp?mode=12"><h5>��λ��</h5></a></li>
				</ul></li>
		</ul>
		<!--< ul class="nav navbar-nav navbar-right">
				<li><a href="#">�α���</a></li>
			</ul> -->
		<c:if test="${sessionScope.id==null }">
			<!-- �α���X -->
			<!-- �����ϱ�� ������ -->
		</c:if>
		<c:if test="${sessionScope.id==null }">
			<!-- ���� -->
			<div class="navbar-right" id="navbar-main">
					<div class="">
						<img src="../image/man.png" id="user_img" />
						 <font color="white">USER</font>
					</div>
			</div>
		</c:if>
	</div>
</div>
</nav>


<div style="height: 102px"></div>
	<jsp:include page="../main2/main2.jsp"></jsp:include>


<div id="footer" class="text-center">
	<strong>COMPANY&nbsp;&nbsp;&nbsp;</strong> <span>�����������۴�</span> &nbsp;&nbsp;&nbsp;&nbsp;
	<strong>OWNER&nbsp;&nbsp;&nbsp;</strong> <span>��ټ� ������ ��â�� ���� �ǿ��� �δ���</span> &nbsp;&nbsp;&nbsp;&nbsp;
	<strong>TEL&nbsp;&nbsp;&nbsp;</strong> <span>02-1234-1234</span> &nbsp;&nbsp;&nbsp;&nbsp;
	<strong>E-MAIL&nbsp;&nbsp;&nbsp;</strong> <span>lets@getit.com</span> &nbsp;&nbsp;&nbsp;&nbsp;<br><br>
	<strong>ADDRESS&nbsp;&nbsp;&nbsp;</strong> <span>����Ư���� ���빮�� �Ͼ����� 125-44 4��</span>
	
</div>

</body>
</html>