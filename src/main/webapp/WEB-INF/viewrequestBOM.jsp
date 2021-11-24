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
            <h1 class="display-4">Stykliste for forspørgsel: 164</h1>
            <table class="table table-striped mt-3 border border-dark">
                <thead class="mt-3">
                <tr>
                    <th scope="col">Træ & Tagplader</th>
                    <th scope="col">Længde</th>
                    <th scope="col">Antal</th>
                    <th scope="col">Enhed</th>
                    <th scope="col">Beskrivelse</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>25x200 mm. trykimp. Brædt</td>
                    <td>360</td>
                    <td>4</td>
                    <td>Stk</td>
                    <td>understernbrædder til for & bag ende</td>
                </tr>
                <tr>
                    <td>25x200 mm. trykimp. Brædt</td>
                    <td>540</td>
                    <td>4</td>
                    <td>Stk</td>
                    <td>understernbrædder til siderne</td>
                </tr>
                <tr>
                    <td>25x200 mm. trykimp. Brædt</td>
                    <td>360</td>
                    <td>2</td>
                    <td>Stk</td>
                    <td>oversternbrædder til forenden</td>
                </tr>
                </tbody>
            </table>
            <table class="table table-striped mt-3 border border-dark">
                <thead class="mt-3">
                <tr>
                    <th scope="col">Beslag & Skruer</th>
                    <th scope="col">Antal</th>
                    <th scope="col">Enhed</th>
                    <th scope="col">Beskrivelse</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>plastmo bundskruer 200 stk.</td>
                    <td>3</td>
                    <td>pakke</td>
                    <td>Skruer til tagplader</td>
                </tr>
                <tr>
                    <td>hulbånd 1x20 mm. 10 mtr.</td>

                    <td>2</td>
                    <td>Rulle</td>
                    <td>Til vindkryds på spær</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="bottom"></div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>