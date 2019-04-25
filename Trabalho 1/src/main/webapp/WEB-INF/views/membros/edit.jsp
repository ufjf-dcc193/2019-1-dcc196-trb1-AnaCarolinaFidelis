<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/WEB-INF/views/inc/header.jsp">
    <jsp:param name="title" value="Editar Membro"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item"><a href="/membros/">Membros</a></li>
        <li class="breadcrumb-item active">Editar</li>
    </ol>

    <div class="card">
        <div class="card-header">Editar Membro</div>
        <div class="card-body">
            <form action="/membros/update/${membro.getId()}" method="post">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" id="nome" name="nome" value="${membro.nome}" class="form-control" required="required" autofocus="autofocus">
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" value="${membro.email}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="sede">Sede</label>
                                <select class="form-control" id="sede" name="sede">
                                    <option value="">Selecione</option>
                                    <c:forEach var="sede" items="${sedes}">
                                        <option value="${sede.getId()}">${sede.nome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="funcao">Função</label>
                                <input type="text" id="funcao" name="funcao" value="${membro.funcao}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dataEntrada">Data de entrada</label>
                                <input type="text" id="dataEntrada" name="dataEntrada" value="<fmt:formatDate value="${membro.dataEntrada}" type="date" pattern="dd/MM/yyyy"/>"  class="form-control" placeholder="dd/MM/yyyy">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dataSaida">Data de saída</label>
                                <input type="text" id="dataSaida" name="dataSaida" value="<fmt:formatDate value="${membro.dataSaida}" type="date" pattern="dd/MM/yyyy"/>" class="form-control" placeholder="dd/MM/yyyy">
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary btn-block" type="submit">Salvar</button>
            </form>
        </div>
    </div>

</div>
<jsp:include page="/WEB-INF/views/inc/footer.jsp"/>