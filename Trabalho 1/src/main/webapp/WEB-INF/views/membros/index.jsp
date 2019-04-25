<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Membros"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">Home</a>
        </li>
        <li class="breadcrumb-item active">Membros</li>
    </ol>
    <div class="card">
        <div class="card-header">Membros</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-striped" id="membros-table" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Função</th>
                            <th>Sede</th>
                            <th class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="membro" items="${membros}">
                            <tr>
                                <td>${membro.nome}</td>
                                <td>${membro.email}</td>
                                <td>${membro.funcao}</td>
                                <td>${membro.sede.nome}</td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a href="/membros/edit/${membro.getId()}" class="btn btn-sm btn-primary">Editar</a>
                                        <a  href="/membros/delete/${membro.getId()}" class="delete btn btn-sm btn-danger">Excluir</a>
                                    </div>
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
