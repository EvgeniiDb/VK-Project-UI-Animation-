//
//  ViewController.swift
//  FirstApp HomeWork
//
//  Created by Евгений Доброволец on 06.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
    }

    @IBAction func didTapOnButton(_ sender: UIButton) {
        print("didTapOnButton")
        
    }
    
    @IBAction func tapRegButton(_ sender: UIButton) {
        print("Введите номер телефона")
    }

    @IBAction func tapForgPassButton(_ sender: UIButton) {
        print("Напомнить пароль")
    }
    
}

private extension ViewController {
    func setupTextFields() {
        passwordTextField.keyboardType = .numberPad
    }
    
    internal override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //необходимо уточнить правильность написания данного кода
    }
    
}













