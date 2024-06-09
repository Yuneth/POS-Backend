package com.restapi.serviceIMPL;

import com.restapi.entity.User;
import com.restapi.repository.UserRepository;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReportService {

    @Autowired
    private UserRepository repository;

    public String exportUserReport(String reportFormat) throws FileNotFoundException, JRException{

        String path = "D:\\IJSE\\CMJD\\Courseworks\\Final CW";
        List<User> users = repository.findAll();

        //load file and compile it
        File file = ResourceUtils.getFile("classpath:users.jrxml");

        JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
        JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(users);
        Map<String, Object> parameters = new HashMap<>();
        parameters.put("createdBy","ETec Shop");
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameters,dataSource);
        if(reportFormat.equalsIgnoreCase("html")){
            JasperExportManager.exportReportToHtmlFile(jasperPrint,path + "\\users.html");
        }
        if(reportFormat.equalsIgnoreCase("pdf")){
            JasperExportManager.exportReportToPdfFile(jasperPrint,path + "\\users.pdf");
        }

        return "report generated in path: " + path;
    }

    public String exportProductReport(String reportFormat) throws FileNotFoundException, JRException {

        return null;
    }
}
