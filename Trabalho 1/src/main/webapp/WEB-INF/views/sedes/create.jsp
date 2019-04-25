<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/inc/header.jsp">
    <jsp:param name="title" value="Nova Sede"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item"><a href="/sedes/">Sedes</a></li>
        <li class="breadcrumb-item active">Criar</li>
    </ol>

    <div class="card">
        <div class="card-header">Nova Sede</div>
        <div class="card-body">
            <form action="/sedes/store" method="post">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" id="nome" name="nome" value="${sede.nome}" class="form-control" required="required" autofocus="autofocus">
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="bairro">Bairro</label>
                                <input type="text" id="bairro" name="bairro" value="${sede.bairro}"  class="form-control">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="cidade">Cidade</label>
                                <input type="text" id="cidade" name="cidade" value="${sede.cidade}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="cidade">Estado</label>
                                <input type="text" id="estado" name="estado" value="${sede.estado}" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="telefone">Telefone</label>
                                <input type="tel" id="telefone" name="telefone" value="${sede.telefone}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="site">Site</label>
                                <input type="text" id="site" name="site" value="${sede.site}" class="form-control">
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