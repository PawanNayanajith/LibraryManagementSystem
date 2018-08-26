<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="design.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
    .dropdown-submenu {
        position: relative;
    }

    .dropdown-submenu .dropdown-menu {
        top: 0;
        left: 100%;
        margin-top: -1px;
    }
</style>

<script>
    $(document).ready(function () {
        $('.dropdown-submenu a.test').on("click", function (e) {
            $(this).next('ul').toggle();
            e.stopPropagation();
            e.preventDefault();
        });
    });
</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome! - LMS</title>       
    </head>
    <div class="container" align="center">

        <div class="header">
            <a href="welcome.jsp" class="logo"><img src="9464_library_logo_1.png" width="256" height="50.5"  ></a>
            <div class="header-right">
                <a class="active" href="welcome.jsp">Home</a>
                <a href="viewAllBooks.jsp">View All Books</a>
                <a href="viewAllClassification.jsp">View All Classifications</a>
            </div>
        </div>


        <!------Navigation---------->

        <div id="navbar">
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="collapse navbar-collapse" id="navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Book <b class="caret"></b></a> 
                            <ul class="dropdown-menu">
                                <li><a href="addBook.jsp">Add Book</a></li>
                                <li><a href="updateBook.jsp">Update Book</a></li>
                                <li><a href="deleteBook.jsp">Delete Book</a></li>
                                <li><a href="search.jsp">Find Book</a></li>
                            </ul>
                        </li>                       
                        <li class="dropdown-submenu">
                            <a class="test" tabindex="-1" href="#">Classification<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu">
                                    <a class="test" href="#">Main Classification <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="classification.jsp">Add Main Classification  </a></li>
                                        <li><a href="updateClassificationMain.jsp">Update Main Classification </a></li>
                                        <li><a href="deleteMainClassification.jsp">Delete Main Classification  </a></li>
                                        <li><a href="searchClassificationMain.jsp">Search Main Classification </a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a class="test" href="#">Sub Classification <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="classificationSub.jsp">Add Sub Classification  </a></li>
                                        <li><a href="updateClassificationSub.jsp">Update Sub Classification </a></li>
                                        <li><a href="deleteSubClassification.jsp">Delete Sub Classification  </a></li>
                                        <li><a href="searchClassificationSub.jsp">Search Sub Classification </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>           
                </div>
            </nav>
        </div>

        <!------End Navigation---------->

        <div class="heading" align="center">
            <h1>Library Management System</h1>
        </div>
        <br><br>

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-4">
                <div class="box">
                    <div class="box-icon">
                        <span class="fa fa-4x fa fa-book"></span>
                    </div>
                    <div class="info">
                        <h4 class="text-center">Add New Book</h4>
                        <a href="addBook.jsp" class="btn">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-4">
                <div class="box">
                    <div class="box-icon">
                        <span class="fa fa-4x fa-search"></span>
                    </div>
                    <div class="info">
                        <h4 class="text-center">View books</h4>
                        <a href="viewAllBooks.jsp" class="btn">Go</a>
                    </div>
                </div>
            </div>


            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-4" >
                <div class="box">
                    <div class="box-icon">
                        <span class="fa fa-4x fa fa-bar-chart"></span>
                    </div>
                    <div class="info">
                        <h4 class="text-center">Classifications</h4>
                        <a href="viewAllClassification.jsp" class="btn">Go</a>
                    </div>
                </div>
            </div>       
        </div>
    </div>
</html>