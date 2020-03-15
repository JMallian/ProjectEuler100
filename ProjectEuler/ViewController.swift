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

        problem1()
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
}

