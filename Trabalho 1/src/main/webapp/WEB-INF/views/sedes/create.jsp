<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/inc/header.jsp">
    <jsp:param name="title" value="Criar sede"/>
</jsp:include>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Home</a></li>
    <li class="breadcrumb-item"><a href="/sedes/">Sedes</a></li>
    <li class="breadcrumb-item active">Criar</li>
</ol>


<jsp:include page="/WEB-INF/views/inc/footer.jsp"/>