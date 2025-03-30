<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://khoinguonsangtao.vn/wp-content/uploads/2021/12/hinh-nen-may-tinh.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
        }
        .content {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="content">
        <h1>Chào mừng, <%= user.getUsername() %>!</h1>
        <img src="assets/img/background.jpg" alt="Background" class="img-fluid rounded shadow" style="max-width: 300px;">
        <br>
        <a href="logout.jsp" class="btn btn-danger mt-3">Đăng xuất</a>
    </div>
</div>
</body>
</html>
