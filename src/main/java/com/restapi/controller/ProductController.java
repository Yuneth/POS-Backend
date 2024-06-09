package com.restapi.controller;

import java.io.IOException;
import java.sql.Timestamp;

import com.restapi.serviceIMPL.ProductServiceImple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.restapi.RersponseHandler.ResponseHandler;
import com.restapi.entity.Product;
import com.restapi.exception.UserException;
import com.restapi.utility.FileUpload;

@RestController("productControllerV2")
@RequestMapping("api/v2")
public class ProductController {

	@Autowired
	private ProductServiceImple productService;

	@PostMapping("/product/addproduct")
	public ResponseEntity<Object> addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile multipartFile)
			throws UserException, IOException {

		// Clean the file name
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());

		// Save the file and get the file code
		String fileCode = FileUpload.saveFile(fileName, multipartFile);

		// Set the product photo to the file code
		product.setProductPhoto(fileCode);

		// Get the current timestamp
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());

		// Set the product attributes
		product.setActive(true);
		product.setCreatedDate(timeStamp);
		product.setUpdatedDate(timeStamp);

		// Add the product
		Product newProduct = productService.addProduct(product);

		// Generate response
		return ResponseHandler.generateResponse("Product added successfully", HttpStatus.CREATED, newProduct);
	}
}
