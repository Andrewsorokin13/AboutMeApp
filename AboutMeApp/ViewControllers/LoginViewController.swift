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
    
    private let user = User.getUser()
    
    // MARK: - Overrides Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? TabBarController
        tabBarController?.user = user
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        dataValidation(login: userNameTextField.text, password: passwordTextField.text)
    }
    
    // MARK: - IB Actions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        clearTextFields()
    }
    
    // MARK: - Private IB Actions
    
    @IBAction private func showLoginAndPassword(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Вот твой логин", message: user.login)
        : showAlert(title: "А вот такой у тебя пароль", message: user.password)
    }
    
    // MARK: - Private Methods
    
    private func clearTextFields() {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func dataValidation(login: String?, password: String?) -> Bool {
        guard login == user.login, password == user.password else {
            showAlert(title: "Неверный логин или пароль", message: "Попробуйте снова") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
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
