<%-- 
    Document   : motivation
    Author     : Likhith
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    h3{
        position: absolute;
        top : 150px;
        left: 42%;
    }
    p{
        position: absolute;
        top : 150px;
        padding: 100px;
        font-family: 'Courier New', Courier, monospace;
        font-weight: lighter;
        font-size: xx-large;
    }
</style>
    </head>
    <body>
        <header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: darkgray">
			<div>
				<a href="#" class="navbar-brand"> Todo
					App</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>
			
			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
            <%
            String jspPath = "D:\\JAVA\\DA\\todo-application\\WebContent\\todo\\";
            String fileName = "quotes.txt";
            String txtFilePath = jspPath + fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            String[] sb = new String[400];
            String line;
            int i = 0;
            while((line = reader.readLine())!= null){
                sb[i] = line;
                i++;
            }
            Random ran = new Random();
            int x = ran.nextInt(300);
            String quote = sb[x];
        %>
        <div> 
            <h3><u> Quote of the Day </u></h3>
            <p id="ans"><%=quote%> <p>
<!--Pie chart of completed and in progress tasks using javascript-->
        </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </body>
</html>
