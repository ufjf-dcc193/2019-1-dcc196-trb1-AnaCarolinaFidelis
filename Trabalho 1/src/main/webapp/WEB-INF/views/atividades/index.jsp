<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Atividades"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">Home</a>
        </li>
        <li class="breadcrumb-item active">Atividades</li>
    </ol>
    <div class="card">
        <div class="card-header">Atividades</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-striped" id="atividades-table" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Título</th>
                            <th>Sede</th>
                            <th>Data de Início</th>
                            <th>Data Final</th>
                            <th class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="atividade" items="${atividades}">
                            <tr>
                                <td>${atividade.titulo}</td>
                                <td>${atividade.sede.nome}</td>
                                <td>${atividade.dataInicio}</td>
                                <td>${atividade.dataFim}</td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a href="/atividades/edit/${atividade.getId()}" class="btn btn-sm btn-primary">Editar</a>
                                        <a  href="/atividades/delete/${atividade.getId()}" class="delete btn btn-sm btn-danger">Excluir</a>
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
