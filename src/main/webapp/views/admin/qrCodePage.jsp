<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>QR Code Page</title>
</head>
<body>
    <%-- Kiểm tra nếu qrCodeBase64 không trống --%>
    <c:if test="${not empty qrCodeBase64}">
        <%-- Hiển thị hình ảnh mã QR sử dụng chuỗi base64 --%>
        <img src="data:image/png;base64,${qrCodeBase64}" alt="QR Code">
    </c:if>
</body>
</html>
