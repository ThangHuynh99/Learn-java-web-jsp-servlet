<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
<div class="container">
	<a class="navbar-brand" href="#">Welcome to T&T shop</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarResponsive" aria-controls="navbarResponsive"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<c:if test="${not empty USERMODEL}"> 
				<li class="nav-item"><a class="nav-link" href="#">Xin chào, ${USERMODEL.fullName}</a></li>
				<li class="nav-item"><a class="nav-link" href='<c:url value="/logout?action=logout"/> '>Logout</a></li>
			</c:if>
			
			<c:if test="${empty USERMODEL}"> 
				<li class="nav-item"><a class="nav-link" href='<c:url value="/login?action=login "/> '>Login</a></li>
				<li class="nav-item"><a class="nav-link" href='<c:url value="/register?action=register"/> '>Register</a></li>
			</c:if>
		</ul>
	</div>
</div>
</nav>
