<%-- 
    Document   : response
    Created on : Dec 4, 2016, 2:04:23 PM
    Author     : Celeste Martinez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please answer the following 20 questions!</h1>
        <jsp:useBean id="userControl" scope="session" class="trivia.Quiz" />
                <jsp:setProperty name="userControl" property="username" />
                <jsp:setProperty name="userControl" property="op" />
                <jsp:setProperty name="userControl" property="question"/> 
                <jsp:setProperty name="userControl" property="answer" />
        
        <form action="response.jsp">
                1. What does JFK stand for?
                <br/>
                <input type="radio" name="answer" value="wrong" />
                John Franco Kennedy
                <br/>
                <input type="radio" name="answer" value="right" />
                John Fitzgerald Kennedy
                <br/>
                <input type="radio" name="answer" value="wrong" />
                John Freddy Kennedy
                <br/>
                <input type="radio" name="answer" value="wrong" />
                John Franklin Kennedy
                <br/>
            </form>
                
        <%--
            int total = 0;
            if(userControl.getAnswer().equals("right")){
                total ++;
            }
        --%>
        <form action="response.jsp">
            <br>
                2. California is the biggest state in the U.S?
                <br/>
                <input type="radio" name="answer" value="wrong" />
                True
                <br/>
                <input type="radio" name="answer" value="right" />
                False
                <br/>
            </form>
        <%--
            if(userControl.getAnswer().equals("right")){
                total ++;
            }
            out.println(total);
        
        --%>
        <form action="response.jsp">
            <br>
                3. Which country is NOT part of the United Kingdom?
                <br/>
                <input type="radio" name="answer" value="wrong" />
                England
                <br/>
                <input type="radio" name="answer" value="wrong" />
                Scotland
                <br/>
                <input type="radio" name="answer" value="wrong" />
                Wales
                <br/>
                <input type="radio" name="answer" value="right" />
                Norway
                <br/>
            </form>
        
        <form action="response.jsp">
            <br>
                3. How many faces does a square based pyramid have?
                <br/>
                <input type="radio" name="answer" value="wrong" />
                3
                <br/>
                <input type="radio" name="answer" value="wrong" />
                4
                <br/>
                <input type="radio" name="answer" value="right" />
                5
                <br/>
                <input type="radio" name="answer" value="wrong" />
                7
                <br/>
            </form>
        
        <%
            try{
                out.println(userControl.getAnswer());
            } catch (Exception e){
                out.println("error");
            }
        %>
    </body>
</html>
