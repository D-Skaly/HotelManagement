package com.Java5.QRCode;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Java5.Helper.ZXingHelper;

@Controller
public class QRCodeController {

	@GetMapping("/generateQRCode")
	public ModelAndView generateQRCode(@RequestParam String data) {
	    // Tạo mã QR code từ dữ liệu và trả về một trang JSP để hiển thị nó
	    byte[] qrCode = ZXingHelper.getQRCodeImage(data, 200, 200);
	    String qrCodeBase64 = qrCode != null ? java.util.Base64.getEncoder().encodeToString(qrCode) : null;
	    ModelAndView modelAndView = new ModelAndView("qrCodePage");
	    modelAndView.addObject("qrCodeBase64", qrCodeBase64);
	    return modelAndView;
	}



}