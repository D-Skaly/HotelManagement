package com.Java5.Interceptor;

import com.Java5.utils.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor {

    @Autowired
    SessionService sessionService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String uri = request.getRequestURI();
        String username = (String) sessionService.get("username"); // Retrieve the username from the session
        String role = (String) sessionService.get("role"); // Retrieve the role from the session
        String error = "";

        if (username == null) { // User is not logged in
            error = "Please login!";
        } else if (uri.startsWith("/admin") && !"Admin".equals(role)) {
            error = "Access denied for non-Admin!";
        } else if (uri.startsWith("/customer") && !"Customer".equals(role)) {
            error = "Access denied for non-Customer!";
        } else if (uri.startsWith("/employee") && !"Employee".equals(role)) {
            error = "Access denied for non-Employee!";
        }

        if (!error.isEmpty()) { // If there is an error
            sessionService.set("security-uri", uri);
            response.sendRedirect("/customer/signIn?error=" + error);
            return false;
        }

        return true;
    }
}