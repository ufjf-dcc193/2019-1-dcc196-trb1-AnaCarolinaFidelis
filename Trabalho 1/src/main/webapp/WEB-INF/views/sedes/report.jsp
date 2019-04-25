<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Relatório"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">Home</a>
        </li>
        <li class="breadcrumb-item active">Relatório</li>
    </ol>
    <div class="card">
        <div class="card-header">Relatório de atividades por sede</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-striped" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Cidade</th>
                            <th>Estado</th>
                            <th class="text-center">Membros</th>
                            <th class="text-center">Hora Assistencial</th>
                            <th class="text-center">Hora Jurídica</th>
                            <th class="text-center">Hora Financeira</th>
                            <th class="text-center">Hora Executiva</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="sede" items="${sedes}">
                            <tr>
                                <td>${sede.nome}</td>
                                <td>${sede.cidade}</td>
                                <td>${sede.estado}</td>
                                <td class="text-center">${sede.totalMembros()}</td>
                                <td class="text-center">${sede.totalHoraAssistencial()}</td>
                                <td class="text-center">${sede.totalHoraJuridica()}</td>
                                <td class="text-center">${sede.totalHoraFinanceira()}</td>
                                <td class="text-center">${sede.totalHoraExecutiva()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../inc/footer.jsp"/>
