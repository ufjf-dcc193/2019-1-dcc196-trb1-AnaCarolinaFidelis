<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/inc/header.jsp">
    <jsp:param name="title" value="Novo Membro"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item"><a href="/membros/">Membros</a></li>
        <li class="breadcrumb-item active">Criar</li>
    </ol>

    <div class="card">
        <div class="card-header">Novo Membro</div>
        <div class="card-body">
            <form action="/membros/store" method="post">
                <div class="form-group">
                    <div class="form-group">
                        <input type="text" id="nome" name="nome" value="${membro.nome}" class="form-control" placeholder="Nome" required="required" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="email" id="email" name="email" value="${membro.email}" class="form-control" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <select class="form-control" name="sede">
                                    <option value="">Sede</option>
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
                                <input type="text" id="funcao" name="funcao" value="${membro.funcao}" class="form-control" placeholder="Função">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <input type="text" id="dataEntrada" name="dataEntrada" value="${membro.dataEntrada}"  class="form-control" placeholder="Data de Entrada">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <input type="text" id="dataEntrada" name="dataSaida" value="${membro.dataSaida}" class="form-control" placeholder="Data de Saída">
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary btn-block" type="submit">Criar</button>
            </form>
        </div>
    </div>

</div>
<jsp:include page="/WEB-INF/views/inc/footer.jsp"/>