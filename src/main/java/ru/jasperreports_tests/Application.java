package ru.jasperreports_tests;

import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.jasperreports_tests.Models.DatabaseCreator;
import ru.jasperreports_tests.jasperreports.ReportLaptops;
import ru.jasperreports_tests.jasperreports.ReportPC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

/**
 * Created by pacman29 on 14.07.17.
 */
public class Application {
    public static void main(String[] args) throws Exception {
        DatabaseCreator.Create();
        JasperPrint laptops =  ReportLaptops.Generate("/home/pacman29/jasperreports_tests/src/main/java/templates_reports/laptops.jrxml");
        JasperExportManager.exportReportToPdfFile(laptops,"/home/pacman29/jasperreports_tests/src/main/java/templates_reports/laptops.pdf");
        JasperPrint pcs =  ReportPC.Generate("/home/pacman29/jasperreports_tests/src/main/java/templates_reports/PCs.jrxml");
        JasperExportManager.exportReportToPdfFile(pcs,"/home/pacman29/jasperreports_tests/src/main/java/templates_reports/PCs.pdf");
    }
}
