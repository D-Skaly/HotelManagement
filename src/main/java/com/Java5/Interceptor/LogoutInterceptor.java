package com.Java5.Interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.Java5.utils.CookieService;
import com.Java5.utils.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class LogoutInterceptor implements HandlerInterceptor {

    private final SessionService sessionService;
    private final CookieService cookieService;

    public LogoutInterceptor(SessionService sessionService, CookieService cookieService) {
        this.sessionService = sessionService;
        this.cookieService = cookieService;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // Invalidate session
        sessionService.remove("username"); // Sửa lỗi: Xóa "username" khỏi session

        // Remove cookies
        cookieService.remove("username"); // Sửa lỗi: Xóa "username" cookie

        // Optionally, add more cookies to be removed
        // cookieService.remove("anotherCookie");

        // Redirect to home page after logout
        response.sendRedirect(request.getContextPath() + "/");
        return false; // Prevent further handling of the request
    }
}
