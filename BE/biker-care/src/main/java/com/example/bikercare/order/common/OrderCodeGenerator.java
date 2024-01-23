package com.example.bikercare.order.common;

import java.util.Random;

public class OrderCodeGenerator {

    /**
     * method create new order code,
     *
     * @return newCode
     * @author Bao Thien
     * @since 20-12-2023
     */
    public static String orderCodeGenerate() {
        StringBuilder newCode = new StringBuilder("CODE-");
        Random random = new Random();
        Integer sixDigitNum = random.nextInt(999999);
        newCode.append(sixDigitNum);
        return newCode.toString();
    }
}
