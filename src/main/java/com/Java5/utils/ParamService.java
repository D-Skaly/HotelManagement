package com.Java5.utils;

import java.io.File;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;

	public String getString(String name, String defaultValue) {
		var value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}

		return value;
	}

	public int getInt(String name, int defaultValue) {
		var value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}

		return Integer.parseInt(value);
	}

	public double getDouble(String name, double defaultValue) {
		var value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}

		return Double.parseDouble(value);
	}

	public boolean getBoolean(String name, boolean defaultValue) {
		var value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}

		return Boolean.parseBoolean(value);
	}

	public Date getDate(String name, Date defaultValue) throws ParseException {
		var value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(value);
	}

	public File save(MultipartFile file, String path) {
		try {
			String realPath = request.getServletContext().getRealPath(path);
			File savedFile = new File(realPath + "/" + file.getOriginalFilename());

			file.transferTo(savedFile);
			return savedFile;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
