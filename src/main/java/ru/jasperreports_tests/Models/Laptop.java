package ru.jasperreports_tests.Models;

/**
 * Created by pacman29 on 17.07.17.
 */
public class Laptop {
    private int code;
    private String model;
    private int speed;
    private int ram;
    private double hd;
    private double price;
    private int screen;

    public Laptop(int code, String model, int speed, int ram, double hd, double price, int screen) {
        this.code = code;
        this.model = model;
        this.speed = speed;
        this.ram = ram;
        this.hd = hd;
        this.price = price;
        this.screen = screen;
    }

    public int getCode() {
        return code;
    }

    public String getModel() {
        return model;
    }

    public int getSpeed() {
        return speed;
    }

    public int getRam() {
        return ram;
    }

    public double getHd() {
        return hd;
    }

    public double getPrice() {
        return price;
    }

    public int getScreen() {
        return screen;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public void setRam(int ram) {
        this.ram = ram;
    }

    public void setHd(double hd) {
        this.hd = hd;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setScreen(int screen) {
        this.screen = screen;
    }
}
