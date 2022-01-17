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
        guard let loginText = loginTextField.text,
              let passwordText = passwordTextField.text else {
                  return
              }
        
        if loginText == "hello" && passwordText == "12345" {
            print("Successfull login")
        }
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
        loginTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .numberPad
    }
    
    internal override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //необходимо уточнить правильность написания данного кода
    }
    
}













