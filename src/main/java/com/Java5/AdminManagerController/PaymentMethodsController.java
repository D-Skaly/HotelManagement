package com.Java5.AdminManagerController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Java5.model.PaymentMethod;
import com.Java5.service.PaymentMethodService;

@Controller
@RequestMapping("/admin/paymentmethodsmanager")
public class PaymentMethodsController {

	@Autowired
	private PaymentMethodService paymentMethodService;

	@RequestMapping("/")
	public String show(Model model) {
		List<PaymentMethod> paymentMethods = paymentMethodService.getAllPaymentMethods();
		model.addAttribute("paymentMethods", paymentMethods);
		model.addAttribute("paymentMethod", new PaymentMethod());
		model.addAttribute("activeTab", "user-list");
		return "/admin/PaymentMethod";
	}

	@PostMapping("/save")
	public String savePaymentMethod(@ModelAttribute("paymentMethod") PaymentMethod paymentMethod) {
		paymentMethodService.addPaymentMethod(paymentMethod);
		return "redirect:/admin/paymentmethodsmanager/";
	}

	@RequestMapping("/edit/{id}")
	public String showEditPaymentMethodForm(@PathVariable("id") int id, Model model) {
		Optional<PaymentMethod> paymentMethod = paymentMethodService.getPaymentMethodById(id);
		if (paymentMethod.isPresent()) {
			model.addAttribute("paymentMethod", paymentMethod.get());
			model.addAttribute("activeTab", "user-edition");
		} else {
			model.addAttribute("activeTab", "user-list");
		}
		List<PaymentMethod> paymentMethods = paymentMethodService.getAllPaymentMethods();
		model.addAttribute("paymentMethods", paymentMethods);
		return "/admin/PaymentMethod";
	}

	@PostMapping("/update")
	public String updateEditPaymentMethodForm(PaymentMethod paymentMethod) {
		paymentMethodService.updatePaymentMethod(paymentMethod);
		return "redirect:/admin/paymentmethodsmanager/";
	}
}
