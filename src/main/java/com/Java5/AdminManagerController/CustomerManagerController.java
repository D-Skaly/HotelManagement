package com.Java5.AdminManagerController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Java5.model.Customer;
import com.Java5.service.CustomerService;

@Controller
@RequestMapping("/admin/customermanager")
public class CustomerManagerController {

	@Autowired
	CustomerService customerService;

	@GetMapping("/")
	public String show(Model model, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "userName") String sortBy,
			@RequestParam(defaultValue = "asc") String sortOrder, @RequestParam("activeTab") Optional<String> tab) {

		Sort sort = sortOrder.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending()
				: Sort.by(sortBy).descending();
		Pageable pageable = PageRequest.of(page, 5, sort); // 5 là số lượng khách hàng trên mỗi trang
		Page<Customer> customerPage;

		if (keyword.isEmpty()) {
			customerPage = customerService.findCustomer(pageable);
		} else {
			customerPage = customerService.searchCustomers(keyword, pageable);
		}
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		model.addAttribute("customers", customerPage.getContent());
		model.addAttribute("totalPages", customerPage.getTotalPages());
		model.addAttribute("currentPage", page);
		model.addAttribute("keyword", keyword);
		model.addAttribute("sortBy", sortBy);
		model.addAttribute("sortOrder", sortOrder);
		model.addAttribute("activeTab", "user-list");
		return "/admin/CustomerManager";
	}

	@GetMapping("/edit/{userName}")
	public String editCustomer(@PathVariable String userName, Model model, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "userName") String sortBy,
			@RequestParam(defaultValue = "asc") String sortOrder, @RequestParam("activeTab") Optional<String> tab) {

		Optional<Customer> customer = customerService.getCustomerByUsername(userName);
		Sort sort = sortOrder.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending()
				: Sort.by(sortBy).descending();
		Pageable pageable = PageRequest.of(page, 5, sort); // 5 là số lượng khách hàng trên mỗi trang
		Page<Customer> customers = customerService.findCustomer(pageable);

		if (customer.isPresent()) {
			model.addAttribute("customer", customer.get());
			model.addAttribute("customers", customers.getContent());
			model.addAttribute("activeTab", "user-edition");
		} else {
			model.addAttribute("error", "Customer not found");
			model.addAttribute("activeTab", "user-list");
		}

		model.addAttribute("sortBy", sortBy);
		model.addAttribute("sortOrder", sortOrder);
		return "admin/CustomerManager";
	}

	@PostMapping("/update")
	public String updateCustomer(@Validated @ModelAttribute("customer") Customer customer, BindingResult bindingResult,
			Model model, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "userName") String sortBy,
			@RequestParam(defaultValue = "asc") String sortOrder) {

		if (bindingResult.hasErrors()) {
			Sort sort = sortOrder.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending()
					: Sort.by(sortBy).descending();
			Pageable pageable = PageRequest.of(page, 5, sort); // 5 là số lượng khách hàng trên mỗi trang
			Page<Customer> customers = customerService.findCustomer(pageable);

			model.addAttribute("customers", customers.getContent());
			model.addAttribute("sortBy", sortBy);
			model.addAttribute("sortOrder", sortOrder);
			model.addAttribute("activeTab", "user-edition");

			return "admin/CustomerManager";
		}

		customerService.updateCustomer(customer);
		return "redirect:/admin/customermanager/";

	}

}
