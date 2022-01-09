//
//  ViewController.swift
//  FirstApp HomeWork
//
//  Created by Евгений Доброволец on 06.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnButton(_ sender: UIButton) {
        
        print("Hello Bro!")
        
    }
    
    @IBAction func tapRegButton(_ sender: UIButton) {
        print("Введите номер телефона")
    }
    
    @IBAction func tapForgPassButton(_ sender: UIButton) {
        print("Напомнить пароль")
    }
    

}

