
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Personal cabinet</title>
</head>

<body>

<div class="container">
    <div class="row main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Personal Cabinet </h1>
                <hr />

                <a style="font-size: 20px; color: #f44336" href="courses">COURSES</a>

            </div>
        </div>
        <div class="main-login main-center">
            <form class="form-horizontal" method="POST" action="PersonalCabinet">

                <div class="form-group">
                    <label for="firstName" class="cols-sm-2 control-label">Your first name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="firstName"  placeholder="Enter first name" required="required"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="lastname" class="cols-sm-2 control-label">Your last name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="lastName"  placeholder="Enter last name" required="required"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class="cols-sm-2 control-label">Your age</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="age"  placeholder="Enter age" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="city" class="cols-sm-2 control-label">Your city</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="city"  placeholder="Enter city" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="country" class="cols-sm-2 control-label">Your country</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="country"  placeholder="Enter country" />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="gender" class="cols-sm-2 control-label">Your gender</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="" class="form-control" name="gender"  placeholder="Enter gender" />
                        </div>
                    </div>
                </div>


                <div class="form-group ">
                    <input type="submit" value ="Submit" class="btn btn-primary btn-lg btn-block login-button">
                </div>
                <div class="login-register">
                    <a href="login.jsp">Login</a>
                </div>
            </form>
        </div>
    </div>
</div>

</html>
