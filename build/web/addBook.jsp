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
        <title>Add Books</title>       
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




        <form class="form-style-9"  action="Book" method="get">
            <ul>
                <li>
                    <input type="text" name="bookID" class="field-style field-split align-left" placeholder="Book ID" />
                    <input type="text" name="title" class="field-style field-split align-right" placeholder="Title" />

                </li>
                <li>
                    <input type="text" name="author" class="field-style field-split align-left" placeholder="Author" />
                    <input type="text" name="publisher" class="field-style field-split align-right" placeholder="Publisher"/>
                </li>
                <li>
                    <input type="text" name="mainClass" class="field-style field-split align-left" placeholder="Main Classification"/>                   
                    <input type="text" name="subClass" class="field-style field-split align-right" placeholder="Sub Classification"/>
                </li>
                <li>
                    <input type="text" name="yop" class="field-style field-split align-left" placeholder="Year of Publishing" />
                    <input type="text" name="lpy" class="field-style field-split align-right" placeholder="Last Printed Year"/>
                </li>
                <li>
                    <input type="text" name="isbnNo" class="field-style field-split align-left" placeholder="ISBN Number" />
                    <input type="text" name="nop" class="field-style field-split align-right" placeholder="Number of Pages"/>
                </li>
                <br>
                <li>
                    <input type="reset" value="Rest" />
                </li>

                <li>
                    <input type="submit" value="Add Book" />
                </li>
            </ul>
            <!-- <ul>
             <li>
                    <select style="width:300px;" name="mainClassification" onchange="selectvalue(form);">
                             <c:forEach items="${listCategory}" var="category">
                                <option value="${category.mainClass}"
                                <c:if test="${category.mainClass eq mainClass}">selected="selected"</c:if>
                                
                                ${category.mainId}
                                </option>
                            </c:forEach>
            
                    </select>
                    
                    
                    <select name="category">
                        <c:forEach items="${listCategory}" var="category">
                            <option value="${category.mainClass}">${category.subClass}</option>
                        </c:forEach>
                    </select>
                </li> 
            </ul> -->
        </form>
    </div>
</html>