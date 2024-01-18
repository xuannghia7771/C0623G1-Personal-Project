package com.example.bikercare.user.common;

import java.util.Random;

public class OrderCodeGenerator {

    public static String orderCodeGenerate() {
        StringBuilder newCode = new StringBuilder("ODR-");
        Random random = new Random();
        Integer sixDigitNum = random.nextInt(999999);
        newCode.append(sixDigitNum);
        return newCode.toString();
    }
}
