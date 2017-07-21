package ru.jasperreports_tests;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by pacman29 on 17.07.17.
 */
public class PropertiesSingleton {
    private static PropertiesSingleton instance;
    private Properties properties;

    public static synchronized PropertiesSingleton getInstance(){
        return instance == null ? new PropertiesSingleton() : instance;
    }

    private PropertiesSingleton() {
        this.properties = new Properties();
        InputStream is;
        try {
            is = getClass().getClassLoader().getResourceAsStream("application.properties");
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Properties getProperties() {
        return properties;
    }
}
