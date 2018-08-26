<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="addBook.css" rel="stylesheet">
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
        <title>Update Details of Books</title>       
    </head>
    <div class="container" align="center">

        <div class="header">
            <a href="welcome.jsp" class="logo"><img src="9464_library_logo_1.png" width="256" height="50.5"  ></a>
            <div class="header-right">
                <a href="welcome.jsp">Home</a>
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

        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>
        <%
            String id = request.getParameter("id");
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/library?useSSL = false";
            String database = "library";
            String userid = "root";
            String password = "manager";
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl, userid, password);
                statement = connection.createStatement();
                String sql = "select * from book where bookID=\"" + id + "\"";
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
        %>
        <!DOCTYPE html>
        <html>
            <body>
                <h3>Update the details of Books</h3>
                <form class="form-style-9"  method="post" action="updateBookProcess.jsp">
                    <input type="hidden" name="id" value="<%=resultSet.getString("bookID")%>">
                    <ul>
                        <li>
                            <input type="text" placeholder="Book ID" name="bookID" class="field-style field-split align-left" value="<%=resultSet.getString("bookID")%>"/>
                            <input type="text" placeholder="Title" name="title" class="field-style field-split align-right" value="<%=resultSet.getString("title")%>"/>

                        </li>
                        <li>
                            <input type="text" placeholder="Author" name="author" class="field-style field-split align-left" value="<%=resultSet.getString("author")%>"/>
                            <input type="text" placeholder="Publisher" name="publisher" class="field-style field-split align-right" value="<%=resultSet.getString("publisher")%>"/>
                        </li>
                        <li>
                            <input type="text" placeholder="Main Classification" name="mainClass" class="field-style field-split align-left" value="<%=resultSet.getString("mainClass")%>"/>                   
                            <input type="text" placeholder="Sub Classification" name="subClass" class="field-style field-split align-right" value="<%=resultSet.getString("subClass")%>"/>
                        </li>
                        <li>
                            <input type="text" placeholder="Year of Publishing" name="yop" class="field-style field-split align-left" value="<%=resultSet.getString("yop")%>" />
                            <input type="text" placeholder="Last Printed Year" name="lpy" class="field-style field-split align-right" value="<%=resultSet.getString("lpy")%>"/>
                        </li>
                        <li>
                            <input type="text" name="ISBN Number" class="field-style field-split align-left" value="<%=resultSet.getString("isbnNo")%>" />
                            <input type="text" name="Number of Pages" class="field-style field-split align-right" value="<%=resultSet.getString("nop")%>"/>
                        </li>
                        <br>
                        <li>
                            <input type="reset" value="Rest to Original Details" />
                        </li>

                        <li>
                            <input type="submit" value="Update New Details" />
                        </li>
                    </ul>
                </form>

                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </body>
    </div>
</html>