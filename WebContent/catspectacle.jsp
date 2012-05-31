<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="inc/header.inc.jsp" />
Spectacle pour à venir la catégorie : ${cat}
<br>
<c:forEach var="spectacle" items="${spectacles}">
<br>
<a href="Spectacle?spectacle=${spectacle.nomSpect}">${spectacle.nomSpect}</a>
</c:forEach>
<jsp:include page="inc/footer.inc.jsp" />