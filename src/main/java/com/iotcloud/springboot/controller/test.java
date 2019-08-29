package com.iotcloud.springboot.controller;

import java.util.HashMap;
import java.util.Objects;

/**
 * @author macfmc
 * @date 2019/8/14- 19:54
 */
public class test {

    public static void main(String[] args) {
        if (args == null || new Object(){{main(null);}}.equals("helloword")){
            System.out.println("A");
        } else {
            System.out.println("B");
        }
    }
}
