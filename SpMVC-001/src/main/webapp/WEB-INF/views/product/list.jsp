<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file="/WEB-INF/views/includes/head.jspf" %>
	<style>
		table.w3-table-all {
			width: 70%;
			margin: 10px auto;
		}
		div.btn_box {
			display:block;
			width: 70%;
			margin: 5px auto;
			text-align: right;
			padding:0;
			
		}
	</style>
  <body>
	<%@ include file="/WEB-INF/views/includes/header.jspf" %>
	<div class="w3-container w3-padding-24 w3-center">
		<table class="w3-table-all w3-striped w3-hoverable">
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>상품분류</th>
				<th>가격</th>
			</tr>
			<c:forEach items="${PRODUCT_LIST}" var="PRODUCT" varStatus="VAR">
				<tr>
					<td>${PRODUCT.p_code}</td>
					<td>${PRODUCT.p_name}</td>
					<td>${PRODUCT.p_item}</td>
					<td>${PRODUCT.p_price}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="w3-container btn_box">
			<a href="${rootPath}/customer/input" class="w3-button w3-blue w3-round-large">고객추가</a>
		</div>
		<ul>
			<%
			/*
			일반적 java
			for(int VAR =1; VAR <=100; VAR += 2) {
				print(VAR)
			}
			*/
			%>
			<c:forEach begin="1" end="100" step="2" var="VAR">
				<li>${VAR}</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>