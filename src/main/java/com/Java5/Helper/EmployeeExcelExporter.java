package com.Java5.Helper;

import java.io.IOException;
import java.util.List;
 

 
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.Java5.model.Employee;

import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;


public class EmployeeExcelExporter {
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private List<Employee> listEmployees;
     
    public EmployeeExcelExporter(List<Employee> listEmployees) {
        this.listEmployees = listEmployees;
        workbook = new XSSFWorkbook();
    }
 
 
    private void writeHeaderLine() {
        sheet = workbook.createSheet("Employees");
         
        Row row = sheet.createRow(0);
         
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontHeight(16);
        style.setFont(font);
         
        createCell(row, 0, "Username", style);      
        createCell(row, 1, "Password", style);       
        createCell(row, 2, "Full Name", style);    
        createCell(row, 3, "Phone Numbers", style);
        createCell(row, 4, "Email", style);
        createCell(row, 5, "Address", style);
        createCell(row, 6, "Status", style);
         
    }
     
    private void createCell(Row row, int columnCount, Object value, CellStyle style) {
        sheet.autoSizeColumn(columnCount);
        Cell cell = row.createCell(columnCount);
        if (value instanceof Integer) {
            cell.setCellValue((Integer) value);
        } else if (value instanceof Boolean) {
            cell.setCellValue((Boolean) value ? "Active" : "Inactive");
        } else {
            cell.setCellValue((String) value);
        }
        cell.setCellStyle(style);
    }
     
    private void writeDataLines() {
        int rowCount = 1;
 
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setFontHeight(14);
        style.setFont(font);
                 
        for (Employee user : listEmployees) {
            Row row = sheet.createRow(rowCount++);
            int columnCount = 0;
             
            createCell(row, columnCount++, user.getUserName(), style);
            createCell(row, columnCount++, user.getPassword(), style);
            createCell(row, columnCount++, user.getFullName(), style);
            createCell(row, columnCount++, user.getPassword(), style);
            createCell(row, columnCount++, user.getEmail(), style);
            createCell(row, columnCount++, user.getAddress(), style);
            createCell(row, columnCount++, user.isActive(), style);
        }
    }
     
    public void export(HttpServletResponse response) throws IOException {
        writeHeaderLine();
        writeDataLines();
        ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        workbook.close();
         
        outputStream.close();
    }
}
