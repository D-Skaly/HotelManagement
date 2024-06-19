package com.Java5.CustomerController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vnpay")
public class VNPayController {
	
	
    @GetMapping("/return")
    public String vnpayReturn(Model model) {
        return "Customer/vnpay_return";
    }
}
