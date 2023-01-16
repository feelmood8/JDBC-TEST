<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
      String driverName = "com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localgost:3306/webdb";
      String username = "root";
      String password = "1234";
      
      Connection conn = null; //DB 연결 선언
      try{
      
      Class.forName(driverName);// 드라이버 불러오기
      
      conn = DriverManager.getConnection(url,username,password);//DB연동
      
      System.out.println(conn);
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try {
         if(conn != null){
            conn.close();
         }
         }catch(Exception e){
      
      }   
   }      

   %>
</body>
</html>