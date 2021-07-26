//
//  ViewController.swift
//  sample-Test
//
//  Created by Yudai Fujioka on 2021/07/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

struct Calculator {
    func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func sub(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}
