<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="addBook.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="addBook.css" rel="stylesheet">
<script src="allbook.js"></script>
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

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View All Classifications</title>       
</head>
<div class="container" align="center">

    <div class="header">
        <a href="welcome.jsp" class="logo"><img src="9464_library_logo_1.png" width="256" height="50.5"  ></a>
        <div class="header-right">
                <a href="welcome.jsp">Home</a>
                <a href="viewAllBooks.jsp">View All Books</a>
                <a class="active" href="viewAllClassification.jsp">View All Classifications</a>
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
                            <li><a class="active" href="addBook.jsp">Add Book</a></li>
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
</div>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/library?useSSL = false";
    String dbName = "library";
    String userId = "root";
    String password = "manager";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<br/>
<h4 align="center"><font><strong>All Classifications</strong></font></h4>

<div class="container">
    <div class="row">
        <div class="col-md-12" >
            <h4 align="center">Main Classifications & Sub Classifications</h4>   
            <input id="myInput" type="text" placeholder=" Type to Filter.." class="form-control" >
            <br/>
            <br>
            <div class="table-responsive">
                <table class="table table-bordred table-striped" style="float:center" >
                    <thead>
                    <th>Main Classification</th>
                    <th>Sub Classification</th>
                    </thead>
                    <tbody id="myTable">
                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl, userId, password);
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM subclassification order by mainClass,subClass";

                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                        <tr>
                            <td><%=resultSet.getString("mainClass")%></td>
                            <td><%=resultSet.getString("subClass")%></td>
                        </tr>

                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
