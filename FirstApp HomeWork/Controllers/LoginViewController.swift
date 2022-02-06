//
//  ViewController.swift
//  FirstApp HomeWork
//
//  Created by Евгений Доброволец on 06.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loadingView1: UIView!
    @IBOutlet weak var loadingView2: UIView!
    @IBOutlet weak var loadingView3: UIView!
    
    
    let segueIdentifierToTabBar = "reuseIdentifierToTabBar"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setupTextFields()
        setupImageLoading()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardDie))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func keyboardDie() {
        self.view.endEditing(true)
    }
    
    func showAlert(message: String, completion: @escaping (UIAlertAction) -> Void) {
        let alertController = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: completion)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "loginSegue" else { return false }
    
        
        if checkForValidationData() {
            return true
        } else {
            showAlert()
            return false
        }
    
    }
    
    
    @IBAction func tapRegButton(_ sender: UIButton) {
        print("Введите номер телефона или email")
    }

    @IBAction func tapForgPassButton(_ sender: UIButton) {
        print("Напомнить пароль")
    }
    
}

private extension LoginViewController {
    func setupTextFields() {
        loginTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .numberPad
    }
    
    internal override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //необходимо уточнить правильность написания данного кода
    }
 
    func checkForValidationData() -> Bool {
        
        guard let loginText = loginTextField.text,
              let passwordText = passwordTextField.text else {
                  return false
              }
        
        let isValidData = loginText == "1" && passwordText == "1"
        return isValidData
    }
 
    func showAlert() {
        let alertViewController = UIAlertController(title: "Ошибка", message: "Вы ввели не верные данные", preferredStyle: .alert)
        let firstButton = UIAlertAction(title: "One", style: .default, handler: nil)
        let secondButton = UIAlertAction(title: "Two", style: .destructive, handler: nil)
        let doneButton = UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            self.passwordTextField.text = ""
            self.loginTextField.text = "" //очищает текстфилд при не верном вводе
        })
        alertViewController.addAction(doneButton) //OK
        alertViewController.addAction(firstButton) //One
        alertViewController.addAction(secondButton) //Two
        
        present(alertViewController, animated: true, completion: nil)
    }
    
}


extension LoginViewController {
    
    func setupImageLoading() {
        loadingView1.alpha = 0
        loadingView1.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 0)
        loadingView2.alpha = 0
        loadingView2.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        loadingView3.alpha = 0
        loadingView3.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    func animatedLoadingLabel() {
        
        UIView.animate(withDuration: 1.5, delay: 0.5, options: [.autoreverse, .repeat], animations: {
            self.loadingView1.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 1, options: [.autoreverse, .repeat], animations: {
            self.loadingView2.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 1.5, options: [.autoreverse, .repeat], animations: {
            self.loadingView3.alpha = 1
        }, completion: {_ in
            self.performSegue(withIdentifier: self.segueIdentifierToTabBar, sender: nil)
        })
        
    }
}









