<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<html>
<head>

<style type="text/css">
.warrap{
	width : 1000px;
	height : 1000px;
	background-color: green;
	position: relative;	
}

.top {
	width : 100%;
	height : 200px;
	background-color: yellow;
	position: absolute;

}

#navi {
	width : 200px;
	height : 600px;
	background-color: red;
	margin-top : 200px;
	position: absolute;
}

#main{
	width : 800px;
	height : 600px;
	margin-left : 200px;
	margin-top : 200px;
	background-color: pink;
	position: absolute;
}

.middle{float: left}

.bottom {
	width : 100%;
	height : 200px;
	margin-top : 800px;
	background-color: yellow;
	position: absolute;
}

</style>

<title>warrap.jsp</title>

</head>
<body>
<div class="warrap">
<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="navi.jsp"></jsp:include>
<jsp:include page="main.jsp"></jsp:include>
<jsp:include page="bottom.jsp"></jsp:include>

</div>

</body>
</html>