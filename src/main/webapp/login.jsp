<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="model.User" %>
<html>
<head>
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-4">
            <div class="card shadow">
                <div class="card-body">
                    <h3 class="text-center">Đăng nhập</h3>

                    <!-- Hiển thị thông báo đăng ký thành công -->
                    <% if (request.getAttribute("success") != null) { %>
                    <div class="alert alert-success" role="alert">
                        <%= request.getAttribute("success") %>
                    </div>
                    <% } %>

                    <form action="login" method="post">
                        <div class="mb-3">
                            <label class="form-label">Tên đăng nhập</label>
                            <input type="text" class="form-control" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Mật khẩu</label>
                            <input type="password" class="form-control" name="password" required>
                        </div>

                        <!-- Hiển thị thông báo lỗi đăng nhập -->
                        <% if (request.getAttribute("error") != null) { %>
                        <div class="alert alert-danger" role="alert">
                            <%= request.getAttribute("error") %>
                        </div>
                        <% } %>

                        <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
                    </form>

                    <p class="mt-3 text-center">Chưa có tài khoản? <a href="register.jsp">Đăng ký</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
