<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Editar sede"/>
</jsp:include>

<div class="container">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item"><a href="/sedes/">Sedes</a></li>
        <li class="breadcrumb-item active">Editar</li>
    </ol>

    <div class="card">
        <div class="card-header">Nova sede</div>
        <div class="card-body">
            <form action="/sedes/store" method="post">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="nome" name="nome"  value="${sede.nome}" class="form-control" placeholder="Nome da sede" required="required" autofocus="autofocus">
                        <label for="nome">Nome da sede</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-4">
                            <div class="form-label-group">
                                <input type="text" id="bairro" name="bairro" value="${sede.bairro}"  class="form-control" placeholder="Bairro">
                                <label for="bairro">Bairro</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-label-group">
                                <input type="text" id="cidade" name="cidade" value="${sede.cidade}" class="form-control" placeholder="Cidade">
                                <label for="cidade">Cidade</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-label-group">
                                <input type="text" id="estado" name="estado" value="${sede.estado}" class="form-control" placeholder="Estado" value="">
                                <label for="cidade">Estado</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="tel" id="telefone" name="telefone" value="${sede.telefone}" class="form-control" placeholder="Telefone">
                                <label for="telefone">Telefone</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="site" name="site" value="${sede.site}" class="form-control" placeholder="Site">
                                <label for="site">Site</label>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-block" type="submit">Salvar</button>
            </form>
        </div>
    </div>

</div>
<jsp:include page="../inc/footer.jsp"/>