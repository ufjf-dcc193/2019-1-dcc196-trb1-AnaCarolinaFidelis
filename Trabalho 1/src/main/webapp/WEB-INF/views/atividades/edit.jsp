<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="/WEB-INF/views/inc/header.jsp">
    <jsp:param name="title" value="Editar Atividade"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item"><a href="/atividades/">Atividades</a></li>
        <li class="breadcrumb-item active">Editar</li>
    </ol>

    <div class="card">
        <div class="card-header">Editar Atividade</div>
        <div class="card-body">
            <form action="/atividades/update/${atividade.getId()}" method="post">
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input type="text" id="titulo" name="titulo" value="${atividade.titulo}" class="form-control" required="required" autofocus="autofocus">
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-4">
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
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dataInicio">Data de Início</label>
                                <input type="text" name="dataInicio" value="<fmt:formatDate value="${atividade.dataInicio}" type="date" pattern="dd/MM/yyyy"/>"  class="form-control" placeholder="dd/MM/yyyy">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dataFim">Data Final</label>
                                <input type="text" id="dataFim" name="dataFim" value="<fmt:formatDate value="${atividade.dataFim}" type="date" pattern="dd/MM/yyyy"/>" class="form-control" placeholder="dd/MM/yyyy">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="horaAssistencial">Hora Assistencial</label>
                                <input type="text" name="horaAssistencial" value="${atividade.horaAssistencial}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="horaJuridica">Hora Jurídica</label>
                                <input type="text" name="horaJuridica" value="${atividade.horaJuridica}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="horaFinanceira">Hora Financeira</label>
                                <input type="text" id="horaFinanceira" name="horaFinanceira" value="${atividade.horaFinanceira}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="horaExecutiva">Hora Executiva</label>
                                <input type="text" id="horaExecutiva" name="horaExecutiva" value="${atividade.horaExecutiva}" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="decricao">Descrição</label>
                    <textarea class="form-control" rows="10" name="descricao" value="${atividade.descricao}"></textarea>
                </div>            
                <button class="btn btn-primary btn-block" type="submit">Salvar</button>
            </form>
        </div>
    </div>

</div>
<jsp:include page="/WEB-INF/views/inc/footer.jsp"/>