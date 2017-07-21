package ru.jasperreports_tests.jasperreports;

import net.sf.jasperreports.engine.*;
import ru.jasperreports_tests.PropertiesSingleton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class ReportPC {
    public static JasperPrint Generate(String filename){
        JasperPrint jasperPrint = null;
        try {
            Class.forName("org.postgresql.Driver");
            Properties properties = PropertiesSingleton.getInstance().getProperties();
            Connection connect = DriverManager.getConnection(properties.getProperty("datasource.url"),
                    properties.getProperty("datasource.username"),properties.getProperty("datasource.password"));
            PreparedStatement statement = connect.prepareStatement("SELECT * FROM pc");
            ResultSet resultSet = statement.executeQuery();

            //PreparedStatement statement_count_of_ram = connect.prepareStatement("SELECT count(*),ram FROM laptop GROUP BY ram");
            //ResultSet resultSet_count_of_ram =  statement_count_of_ram.executeQuery();

            JasperReport jasperReport = JasperCompileManager.compileReport(filename);

            Map<String,Object> parameters = new HashMap<String, Object>();

            parameters.put("TablePCs",new JRResultSetDataSource(resultSet));
            //parameters.put("ChartLaptops",new JRResultSetDataSource(resultSet_count_of_ram));

            jasperPrint = JasperFillManager.fillReport(jasperReport,parameters);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jasperPrint;
    }
}
