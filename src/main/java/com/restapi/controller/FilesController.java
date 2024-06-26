package com.restapi.controller;

import java.io.IOException;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.restapi.utility.FileDownload;
import com.restapi.utility.FileUpload;
import com.restapi.utility.FileUploadResponse;

@RestController
@CrossOrigin(originPatterns =  "*")
@RequestMapping("/api/v1/photo/")
public class FilesController {
	 @PostMapping("/uploadFile")
	    public ResponseEntity<FileUploadResponse> uploadFile(@RequestParam("file") MultipartFile multipartFile)throws IOException {
	         
	        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
	        long size = multipartFile.getSize();
	         
	        String filecode = FileUpload.saveFile(fileName, multipartFile);
	         
	        FileUploadResponse response = new FileUploadResponse();
	        response.setFileName(fileName);
	        response.setSize(size);
	        response.setDownloadUri("/downloadFile/" + filecode);
	         
	        return new ResponseEntity<>(response, HttpStatus.OK);
	    }
	    
	    @GetMapping("/downloadFile/{fileCode}")
	    public ResponseEntity<?> downloadFile(@PathVariable("fileCode") String fileCode) {
	        FileDownload downloadUtil = new FileDownload();
	         
	        Resource resource = null;
	        try {
	            resource = downloadUtil.getFileAsResource(fileCode);
	        } catch (IOException e) {
	            return ResponseEntity.internalServerError().build();
	        }
	         
	        if (resource == null) {
	            return new ResponseEntity<>("File not found", HttpStatus.NOT_FOUND);
	        }
	         
//	        String contentType = "application/octet-stream";
//	        String headerValue = "attachment; filename=\"" + resource.getFilename() + "\"";
	      //for image downloading
//	        return ResponseEntity.ok()
//	                .contentType(MediaType.parseMediaType(contentType))
//	               .header(HttpHeaders.CONTENT_DISPOSITION, headerValue)
//	                .body(resource);
	        
	        String extension = "jpg";
	        
	        String fileName = resource.getFilename();
	        int index = fileName.lastIndexOf(".");
	        
	        if(index>0)
	        {
	        	extension = fileName.substring(index+1);
	        }
	        
	        //for image showing on browser
	        return ResponseEntity.ok()
	                .contentType(MediaType.parseMediaType(extension == "jpg" ? MediaType.IMAGE_JPEG_VALUE:MediaType.IMAGE_PNG_VALUE))
	               .header(HttpHeaders.CONTENT_DISPOSITION)
	                .body(resource);
	   
	    
	    }
	    
	    
	    
	    
	    @GetMapping("/displayFile/{fileCode}")
	    public ResponseEntity<?> displayFile(@PathVariable("fileCode") String fileCode) {
	        FileDownload downloadUtil = new FileDownload();
	         
	        Resource resource = null;
	        try {
	            resource = downloadUtil.getFileAsResource(fileCode);
	        } catch (IOException e) {
	            return ResponseEntity.internalServerError().build();
	        }
	         
	        if (resource == null) {
	            return new ResponseEntity<>("File not found", HttpStatus.NOT_FOUND);
	        }
	         
//	        String contentType = "application/octet-stream";
//	        String headerValue = "attachment; filename=\"" + resource.getFilename() + "\"";
	      //for image downloading
//	        return ResponseEntity.ok()
//	                .contentType(MediaType.parseMediaType(contentType))
//	               .header(HttpHeaders.CONTENT_DISPOSITION, headerValue)
//	                .body(resource);
	        
	        String extension = "jpg";
	        
	        String fileName = resource.getFilename();
	        int index = fileName.lastIndexOf(".");
	        
	        if(index>0)
	        {
	        	extension = fileName.substring(index+1);
	        }
	        
	        //for image showing on browser
	        return ResponseEntity.ok()
	                .contentType(MediaType.parseMediaType(extension == "jpg" ? MediaType.IMAGE_JPEG_VALUE:MediaType.IMAGE_PNG_VALUE))
	               .header(HttpHeaders.CONTENT_DISPOSITION)
	                .body(resource);
	   
	    
	    }
}
