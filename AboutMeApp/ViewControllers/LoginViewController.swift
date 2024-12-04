//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 02.12.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: Private propperty
    
    private let userName: String = "admin"
    private let password: String = "admin102"
    
    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeViewController = segue.destination as? WelcomeViewController
        welcomeViewController?.userName = userName
        clearTextFields()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard let user = userNameTextField.text, let userPassword = passwordTextField.text else { return  false }
        guard userName == user, userPassword == password else {
            showAlert(title: "Неверный логин или пароль.", message: "Попробуйте еще раз."){
                self.passwordTextField.text = ""
                self.userNameTextField.text = ""
            }
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        clearTextFields()
    }
    
    // MARK: - private IB Actions
    
    @IBAction private func showLoginAndPassword(_ sender: UIButton) {
        showAlert(
            title: "Бу, испугался? Не бойся, ниже твой логин и пароль 🌝",
            message: "Логин: \(userName)\nПароль: \(password)"
        )
    }
    
    // MARK: - Private Methods
    
    private func clearTextFields() {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}


// MARK: - Show alert extension
extension LoginViewController {
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок", style: .default){ _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
