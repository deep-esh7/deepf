<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@page import="java.util.HashMap"%>
<jsp:useBean id="a" class="Menu.Menu"></jsp:useBean>
<div class="content">
	<p:choose>
		<p:when test="${param.content == null}">
			<jsp:include page="Index.jsp"></jsp:include> 
		</p:when>
		<p:otherwise>
			<jsp:include page="${a.getPage(param.content)}"></jsp:include>
		</p:otherwise>
	</p:choose>

</div>