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
public class star {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("How Many Stars : ");
        int n = sc.nextInt();
        char c = '*';
        int i = 1;
        int j;
        int k = n;

        do {
            j = 1;
            do {
                if (j == i || j == k - i + 1) {
                    System.out.print(c);
                }
                System.out.print(" ");
                j++;
            } while (j <= k);
            System.out.println();
            i++;
        } while (i <= k);
    }
}
