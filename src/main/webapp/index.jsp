
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Admin</title>
</head>

<body>
<div class="container">
    <div class="row main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Registration </h1>
                <hr />
            </div>
        </div>
        <div class="main-login main-center">
            <form class="form-horizontal" method="POST" action="Registration">

                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Your Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="email" class="form-control" name="email"  placeholder="Enter your Email" required="required"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                            <input type="password" class="form-control" name="password"   placeholder="Enter your password" required="required"/>
                        </div>
                    </div>
                </div>

                <div class="form-group ">
                    <input type="submit" value ="Submit" class="btn btn-primary btn-lg btn-block login-button">
                </div>
                <div style=" text-align: center;font-size: 20px">
                    <a href="login.jsp">Login</a>
                </div>
            </form>
        </div>
    </div>
</div>

</html>
