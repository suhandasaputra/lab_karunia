/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boserverpos.function;

import java.util.Scanner;

/**
 *
 * @author matajari
 */
public class example {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("How many stars : ");
        int line = scanner.nextInt();

        char character = '*';


        for (int i = 0; i <= line; i++) {//pengulangan baris

            for (int j = 1; j <= line; j++) {//pengulangan digit
                if (j == i || j == line - i + 1) {
                    System.out.print(character);
                }
                System.out.print(" ");

            }

            System.out.println();

        }
        
        int InputNumber;

        System.out.println("How many stars : ");
        InputNumber = scanner.nextInt();

        boolean isPrime = false;
        for (int i = 2; i <= InputNumber / 2; ++i) {
            if (InputNumber % i == 0) {
                isPrime = true;
                break;
            }
        }

        if (!isPrime) {
            System.out.println(InputNumber + " IS A PRIME NUMBER");
        } else {
            System.out.println(InputNumber + " IS NOT A PRIME NUMBER");
        }
    }
    
}
