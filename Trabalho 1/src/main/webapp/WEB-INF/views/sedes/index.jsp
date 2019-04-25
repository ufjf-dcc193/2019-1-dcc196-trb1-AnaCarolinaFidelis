<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Sedes"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">Home</a>
        </li>
        <li class="breadcrumb-item active">Sedes</li>
    </ol>
    <div class="card">
        <div class="card-header">Sedes</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Bairro</th>
                            <th>Cidade</th>
                            <th>Estado</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="sede" items="${sedes}">
                            <tr>
                                <td>${sede.nome}</td>
                                <td>${sede.bairro}</td>
                                <td>${sede.cidade}</td>
                                <td>${sede.estado}</td>
                                <td class="text-center">
                                    <a href="/sedes/edit/${sede.getId()}" class="btn btn-primary"> Editar</a>
                                    <a href="/sedes/delete/${sede.getId()}" class="btn btn-danger"> Excluir</a>
                                </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../inc/footer.jsp"/>
