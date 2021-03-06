<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/admin/size">Size</a></li>
					<li><a href="/admin/power">Power</a></li>
					<li><a href="/admin/kind">Kind</a></li>
					<li><a href="/admin/country">Country</a></li>
					<li><a href="/admin/brand">Brand</a></li>
					<li><a href="/admin/item">Item</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<div class="row">
	<div class="col-md-3 col-xs-12"></div>
	<div class="col-md-7 col-xs-12">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<form:form class="form-horizontal" action="/admin/kind"
							method="POST" modelAttribute="kind">
							<div class="form-group">
								<div class="form-group">
									<label for="name" class="col-sm-offset-3 col-sm-9"><form:errors
											path="name" /></label>
								</div>
								<label for="name" class="col-sm-3 control-label">KindOfMaterial</label>
								<div class="col-sm-9">
									<form:input class="form-control" path="name"
										id="name" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-default">Create</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-xs-4">
				<h5>KindOfMaterial</h5>
			</div>
			<div class="col-md-4 col-xs-4">
				<h5>Update</h5>
			</div>
			<div class="col-md-4 col-xs-4">
				<h5>Delete</h5>
			</div>
		</div>
		<c:forEach items="${kinds}" var="kind">
			<div class="row">
				<div class="col-md-4 col-xs-4">${kind.name}</div>
				<div class="col-md-4 col-xs-4">
					<a class="btn btn-warning" href="/admin/kind/update/${kind.id}">update</a>
				</div>
				<div class="col-md-4 col-xs-4">
					<a class="btn btn-danger" href="/admin/kind/delete/${kind.id}">delete</a>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="col-md-2 col-xs-12"></div>
</div>