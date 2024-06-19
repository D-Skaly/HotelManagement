<%@page import="java.net.URLEncoder"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="com.Java5.Config.Config"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>KẾT QUẢ THANH TOÁN</title>
        <!-- Bootstrap core CSS from CDN -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
        <style>
            body {
                background-color: #f8f9fa;
                font-family: 'Arial', sans-serif;
            }
            .container {
                max-width: 900px;
                margin: auto;
                padding: 20px;
            }
            .card {
                margin-top: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .card-header {
                background-color: #007bff;
                color: white;
                font-weight: bold;
                text-align: center;
                padding: 15px;
                border-radius: 10px 10px 0 0;
            }
            .card-body {
                padding: 20px;
            }
            .form-group label {
                font-weight: bold;
                color: #495057;
            }
            .form-group p {
                margin: 0;
                font-size: 15px;
                color: #343a40;
                padding: 10px;
                background-color: #e9ecef;
                border-radius: 5px;
            }
            .header {
                margin-bottom: 20px;
            }
            .header h3 {
                font-size: 28px;
                color: #343a40;
                text-align: center;
                margin-bottom: 10px;
            }
            .footer {
                text-align: center;
                margin-top: 20px;
                font-size: 14px;
                color: #6c757d;
            }
        </style>
    </head>
    <body>
        <%
            // Begin process return from VNPAY
            Map fields = new HashMap();
            for (Enumeration params = request.getParameterNames(); params.hasMoreElements();) {
                String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
                String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    fields.put(fieldName, fieldValue);
                }
            }

            String vnp_SecureHash = request.getParameter("vnp_SecureHash");
            if (fields.containsKey("vnp_SecureHashType")) {
                fields.remove("vnp_SecureHashType");
            }
            if (fields.containsKey("vnp_SecureHash")) {
                fields.remove("vnp_SecureHash");
            }
            String signValue = Config.hashAllFields(fields);
        %>
        <!-- Begin display -->
        <div class="container">
            <div class="header">
                <h3>KẾT QUẢ THANH TOÁN</h3>
            </div>
            <div class="card">
                <div class="card-header">
                    Thông tin giao dịch
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Mã giao dịch thanh toán:</label>
                        <p class="card-text"><%=request.getParameter("vnp_TxnRef")%></p>
                    </div>    
                    <div class="form-group">
                        <label>Số tiền:</label>
                        <p class="card-text"><%=request.getParameter("vnp_Amount")%></p>
                    </div>  
                    <div class="form-group">
                        <label>Mô tả giao dịch:</label>
                        <p class="card-text"><%=request.getParameter("vnp_OrderInfo")%></p>
                    </div> 
                    <div class="form-group">
                        <label>Mã lỗi thanh toán:</label>
                        <p class="card-text"><%=request.getParameter("vnp_ResponseCode")%></p>
                    </div> 
                    <div class="form-group">
                        <label>Mã giao dịch tại CTT VNPAY-QR:</label>
                        <p class="card-text"><%=request.getParameter("vnp_TransactionNo")%></p>
                    </div> 
                    <div class="form-group">
                        <label>Mã ngân hàng thanh toán:</label>
                        <p class="card-text"><%=request.getParameter("vnp_BankCode")%></p>
                    </div> 
                    <div class="form-group">
                        <label>Thời gian thanh toán:</label>
                        <p class="card-text"><%=request.getParameter("vnp_PayDate")%></p>
                    </div> 
                    <div class="form-group">
                        <label>Tình trạng giao dịch:</label>
                        <p class="card-text">
                            <%
                                if (signValue.equals(vnp_SecureHash)) {
                                    if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                                        out.print("Thành công");
                                    } else {
                                        out.print("Không thành công");
                                    }
                                } else {
                                    out.print("invalid signature");
                                }
                            %>
                        </p>
                    </div> 
                </div>
            </div>
            <footer class="footer">
                <p>&copy; VNPAY 2020</p>
            </footer>
        </div>  
    </body>
</html>
