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
public class prime {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Input Number : ");
        int number = sc.nextInt();

        int i, m = 0, flag = 0;
//        int n = 3;
        m = number / 2;
        if (number == 0 || number == 1) {
            System.out.println(number + " IS NOT A PRIME NUMBER");
        } else {
            for (i = 2; i <= m; i++) {
                if (number % i == 0) {
                    System.out.println(number + " IS NOT A PRIME NUMBER");
                    flag = 1;
                    break;
                }
            }
            if (flag == 0) {
                System.out.println(number + " IS A PRIME NUMBER");
            }
        }//end of else

    }
}
