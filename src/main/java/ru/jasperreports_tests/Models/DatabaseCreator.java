package ru.jasperreports_tests.Models;

import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import ru.jasperreports_tests.PropertiesSingleton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DatabaseCreator {
    public static void Create(){
        try {
            Class.forName("org.postgresql.Driver");
            Properties properties = PropertiesSingleton.getInstance().getProperties();
            Connection connect = DriverManager.getConnection(properties.getProperty("datasource.url"),
                    properties.getProperty("datasource.username"),properties.getProperty("datasource.password"));
            ScriptUtils.executeSqlScript(connect, new ClassPathResource("schema.sql"));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
