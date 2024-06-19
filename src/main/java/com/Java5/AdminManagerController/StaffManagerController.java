package com.Java5.AdminManagerController;

import com.Java5.DAO.EmployeeDao;
import com.Java5.Helper.EmployeeExcelExporter;
import com.Java5.model.Employee;
import com.Java5.service.EmployeeService;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin/employeemanager")
public class StaffManagerController {

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	EmployeeDao employeeDao;

	// Lấy danh sách tất cả các nhân viên và hiển thị trang quản lý nhân viên
	@GetMapping("/")
	public String showEmployeeList(Model model) {
		List<Employee> employees = employeeService.getAllEmployees();
		model.addAttribute("employees", employees);
		model.addAttribute("activeTab", "employee-list");
		return "admin/StaffManager";
	}

	// Chuyển đến trang thêm nhân viên mới
	@GetMapping("/new")
	public String newEmployeeForm(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("activeTab", "employee-form");
		return "admin/StaffManager";
	}

	// Thêm nhân viên mới
	@PostMapping("/add")
	public String addEmployee(@ModelAttribute Employee employee) {
		System.out.println("add");
		employeeService.addEmployee(employee);
		return "redirect:/admin/employeemanager/";
	}

	// Chuyển đến trang chỉnh sửa nhân viên
	@GetMapping("/edit/{userName}")
	public String editEmployee(@PathVariable String userName, Model model) {
		Optional<Employee> employee = employeeService.getEmployeeByUsername(userName);
		List<Employee> employees = employeeService.getAllEmployees();
		model.addAttribute("employees", employees);
		if (employee.isPresent()) {
			model.addAttribute("employee", employee.get());
			model.addAttribute("activeTab", "employee-form");
		} else {
			model.addAttribute("error", "Employee not found");
			model.addAttribute("activeTab", "employee-list");
		}
		return "admin/StaffManager";
	}

	// Cập nhật thông tin nhân viên
	@PostMapping("/update")
	public String updateEmployee(@ModelAttribute Employee employee, Model model) {
		employeeService.updateEmployee(employee);
		return "redirect:/admin/employeemanager/";
	}

	// Xóa nhân viên
	@GetMapping("/delete/{userName}")
	public String deleteEmployee(@PathVariable String userName, Model model) {
		employeeService.deleteEmployee(userName);
		return "redirect:/admin/employeemanager/";
	}
	
	@GetMapping("/export/excel")
    public void exportToExcel(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());
         
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
        response.setHeader(headerKey, headerValue);
         
        List<Employee> listEmployee = employeeDao.findAll();
        System.out.println(listEmployee);
         
        EmployeeExcelExporter excelExporter = new EmployeeExcelExporter(listEmployee);
         
        excelExporter.export(response);    
    } 
}
