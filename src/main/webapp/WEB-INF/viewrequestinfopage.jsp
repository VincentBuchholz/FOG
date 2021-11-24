<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="wi dth=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Fog</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
    <div class="top">
        <div id="navigation">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark p-0" style="background-color:#0c2169 !important;">
                <div class="float-left" id="logoimg" style="width:126px;">
                    <a href="${pageContext.request.contextPath}/fc/employeepage">
                        <img src="${pageContext.request.contextPath}/images/logo.png" height="auto" width="100%"/>
                    </a>
                </div>
                <!-- Container wrapper -->
                <div class="container-fluid">

                    <!-- Toggle button -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarNavDropdown"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <i class="fas fa-bars"></i>
                    </button>

                    <!-- Collapsible wrapper -->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <!-- Navbar brand -->
                        <!-- Left links -->
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/fc/viewcustomerspage">Kunder</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/fc/viewrequestspage">Forespørgelser</a>
                            </li>

                        </ul>
                        <!-- Left links -->
                    </div>
                    <!-- Collapsible wrapper -->

                    <!-- Right elements -->
                    <div class="d-flex align-items-center">
                        <!-- Icon -->
                        <a class="text-reset me-3" href="#">
                            <i class="fas fa-shopping-cart"></i>
                        </a>
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="pointer-events: none">admin@test.dk</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signout.html">Log ud</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Right elements -->
                </div>
                <!-- Container wrapper -->
            </nav>
        </div>
    </div>
    <div class="content">
        <div class="jumbotron bg-light mt-5 p-5 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="row" style="margin:auto">
                <div class="col-sm-6">
                    <form class="card p-3 " action="${pageContext.request.contextPath}/fc/viewrequestBOM" method="post">
                        <h1>OVERSIGT FOR FORESPØRGSEL: 164 </h1>
                        <div class="form-outline mb-4">
                            <label for="sel1">Carport bredde:</label>
                            <select class="form-control" id="sel1">
                                <option selected>Vælg bredde</option>
                                <option>200</option>
                                <option>210</option>
                                <option>220</option>
                                <option>230</option>
                            </select>
                        </div>
                        <div class="form-outline mb-4">
                            <label for="sel2">Carport længde:</label>
                            <select class="form-control" id="sel2">
                                <option selected>Vælg længde</option>
                                <option>200</option>
                                <option>210</option>
                                <option>220</option>
                                <option>230</option>
                            </select>
                        </div>
                        <div class="form-outline mb-4">
                            <label for="sel3">Carport tag:</label>
                            <select class="form-control" id="sel3">
                                <option selected>Vælg tag</option>
                                <option>Plastik</option>
                                <option>Træ</option>
                            </select>
                        </div>
                        <div class="form-outline mb-4">
                            <label for="sel6">Taghældning:</label>
                            <select class="form-control" id="sel6">
                                <option selected>Vælg taghældning</option>
                                <option>25 grader</option>
                                <option>30 grader</option>
                            </select>
                        </div>
                        <p class="mb" style="font-weight: bold">Redskabsrum</p>
                        <p class="mb-5">NB! Der skal beregnes 15cm tagudhæng på hver side af redskabsrummet!</p>

                        <div class="form-outline mb-4">
                            <label for="sel4">Redskabsrum bredde:</label>
                            <select class="form-control" id="sel4">
                                <option selected>Ønsker ikke redskabsrum</option>
                                <option>200</option>
                                <option>210</option>
                                <option>220</option>
                                <option>230</option>
                            </select>
                        </div>

                        <div class="form-outline mb-4">
                            <label for="sel5">Redskabsrum længde:</label>
                            <select class="form-control" id="sel5">
                                <option selected>Ønsker ikke redskabsrum</option>
                                <option>200</option>
                                <option>210</option>
                                <option>220</option>
                                <option>230</option>
                            </select>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block fogbtn" type="submit" >Opdater</button>
                    </form>

                    <form class="card p-3 " action="${pageContext.request.contextPath}/fc/viewrequestBOM" method="post">
                        <div class="form-outline mb-4">
                            <label>Forespørgsels status:</label>
                            <input type="text" class="form-control" disabled value="Afventer godkendelse">
                        </div>
                        <div class="form-outline mb-4">
                            <label>Forslået pris:</label>
                            <input type="text" class="form-control" disabled value="20000.00 DKK">
                        </div>
                        <div class="form-outline mb-4">
                            <label>Ret pris:</label>
                            <input type="number" class="form-control" value="20000.00">
                        </div>
                        <button class="btn btn-primary btn-lg btn-block fogbtn" type="submit" >Se stykliste</button>
                        <div class="mt-3">
                            <button class="btn btn-success btn-lg btn-block" type="submit" >Godkend</button>
                            <button class="btn btn-danger btn-lg btn-block" type="submit" >Afvis</button>
                        </div>
                    </form>
                </div>
                <div class="col-sm-6 text-center">
                    <img src="${pageContext.request.contextPath}/images/carportOverview.PNG" alt="" width="100%"></p>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom"></div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>