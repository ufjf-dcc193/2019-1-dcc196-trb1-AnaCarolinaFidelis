<%@page pageEncoding="utf-8"%>
<jsp:include page="../inc/header.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-building"></i>
                    </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="/sedes">
                    <span class="float-left">Sedes</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-user-friends"></i>
                    </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="/membros">
                    <span class="float-left">Membros</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-desktop"></i>
                    </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="/atividades">
                    <span class="float-left">Atividades</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-list"></i>
                    </div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="/sedes/report">
                    <span class="float-left">Relatório</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>