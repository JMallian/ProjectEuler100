//
//  ViewController.swift
//  ProjectEuler
//
//  Created by Jessica on 3/15/20.
//  Copyright © 2020 Jessica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //problem1()
        problem2()
    }
    
    private func problem1() {
        //Find the sum of all the multiples of 3 or 5 below 1000.
        var sum = 0
        for num in 1..<1000 {
            if num % 3 == 0 || num % 5 == 0 {
                sum += num
            }
        }
        print(sum)
    }
    
    private func problem2() {
        // By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
        // 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
        var keepGoing = true
        var first = 0
        var second = 1
        var sum = 0
        var sumOfEvenValuedTerms = 0
        while keepGoing {
            sum = first + second
            //print(sum)
            first = second
            second = sum
            if sum > 4_000_000 {
                keepGoing = false
            }
            if sum % 2 == 0 {
                sumOfEvenValuedTerms += sum
            }
        }
        print(sumOfEvenValuedTerms)
    }
}

