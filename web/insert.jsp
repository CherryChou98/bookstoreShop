<%--
  Created by IntelliJ IDEA.
  User: FT丶Kuroko
  Date: 2018/11/25
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<html>
<head>
    <title>add message into db </TITLE>
</head>
<body>
<%
    String id=request.getParameter("id"); //从表单获得
    String username=request.getParameter("username"); //从表单获得
    String password=request.getParameter("password"); //从表单获得
    String phone=request.getParameter("phone"); //从表单获得
    String cellphone=request.getParameter("cellphone"); //从表单获得
    String email=request.getParameter("email"); //从表单获得
    String address=request.getParameter("address"); //从表单获得

    java.util.Date date=new java.util.Date();
    String datetime=new Timestamp(date.getTime()).toString();
    try
    {
/** 连接数据库参数 **/
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:F:/Java Practice/javaWeb/javaWebExp/Git/database/bookstore.db";
        Connection conn = DriverManager.getConnection(url);
        Statement stmt = conn.createStatement();
//        stmt.executeQuery("SET NAMES UTF8");
        String insert_sql = "insert into user values('" + id + "','" + username + "','" + password + "','" + phone + "','"+ cellphone +"','" + email + "','" + address + "')";
        String query_sql = "select * from user";

        try {
            stmt.execute(insert_sql);
        }catch(Exception e) {
            e.printStackTrace();
        }
        try {
            ResultSet rs = stmt.executeQuery(query_sql);
            while(rs.next()) {
%>
ID：<%=rs.getString("id")%> </br>
用户名：<%=rs.getString("username")%> </br>
密码：<%=rs.getString("password")%> </br>
phone：<%=rs.getString("phone")%> </br>
cellphone：<%=rs.getString("cellphone")%> </br>
email：<%=rs.getString("email")%> </br>
address：<%=rs.getString("address")%> </br></br>
<%
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
//rs.close();
        stmt.close();
        conn.close();
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
