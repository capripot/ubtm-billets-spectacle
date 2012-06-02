<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="inc/header.inc.jsp" />
<br><br>
Nom de la salle :${salle.nomSalle}
<br><br>
Ville :${salle.villeSalle}
<br><br>
${salle.descriptionSalle}
<br><br>
Actualité :
<br>
<c:forEach var="spectacle" items="${spectacles}">
<br>
<a href="Spectacle?spectacle=${spectacle}">${spectacle}</a>
</c:forEach>
<jsp:include page="inc/footer.inc.jsp" />