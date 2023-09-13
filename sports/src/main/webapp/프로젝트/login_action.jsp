<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("UTF-8");

String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");

// It's better to use PrintWriter to send responses to the client
response.setContentType("text/html;charset=UTF-8");

// We'll use a flag to keep track of whether login is successful or not
boolean loginSuccessful = false;

Connection con = null;
Statement st = null;
ResultSet rs = null;

try {
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "scott";
    String password = "tiger";

    Class.forName(driver);
    con = DriverManager.getConnection(url, user, password);
    st = con.createStatement();

    String sql = "SELECT id, pw FROM customer";
    rs = st.executeQuery(sql);

    while (rs.next()) {
        String dbUserId = rs.getString("id");
        String dbUserPw = rs.getString("pw");

        if (userid.equals(dbUserId) && userpw.equals(dbUserPw)) {
            loginSuccessful = true;
            break;
        }
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    try {
        if (rs != null) rs.close();
        if (st != null) st.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

if (loginSuccessful) {
	session.setAttribute("userid", userid);
    out.println("<script>alert('로그인 성공'); window.location.href='경기일정.jsp?id=" + userid + "';</script>");
} else {
    out.println("<script>alert('로그인 실패'); history.back();</script>");
}
%>