
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <!-- Website CSS style -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=passwordion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <link href="style.css" rel="stylesheet" type="text/css">
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