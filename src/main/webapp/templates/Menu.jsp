<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-light bg-light" style="position: fixed; top: 0; width:100%; z-index: 100000;">
    <div class="container">
        <a class="navbar-brand font-weight-bold text-dark" href="home">Shop Shoes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav m-auto">
                <li class="nav-item">
                    <a class="nav-link font-weight-bold" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link font-weight-bold" href="shop">Shop</a>
                </li>

                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="manager">Manager Product</a>
                    </li>
                </c:if> 
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="managerAccount">Manager Accout</a>
                    </li>
                </c:if>
                
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="editProfile">Edit Profile</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="admin" target="_blank">Statistic</a>
                    </li>
                </c:if> 
               
            </ul>
            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <a class="btn btn-success btn-sm ml-3" href="managerCart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;">Cart</span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                </a>
            </form>
            <ul class="navbar-nav">
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="login">Login</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="forgotPassword">Forgot Password</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

