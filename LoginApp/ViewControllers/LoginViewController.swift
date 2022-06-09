//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 29.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userWishBoardVC = navigationVC.topViewController as! WishBoardViewController
                userWishBoardVC.user = user
            } else if let aboutMeVC = $0 as? AboutMeViewController {
                aboutMeVC.user = user
            }
        }
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text != user.userName || passwordTextField.text != user.password {
            showAlert(
                withTitle: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField)
        }
    }
    
    @IBAction func showHelp(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", message: "Your name is \(user.userName) 😉")
        : showAlert(withTitle: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "showHelloVC", sender: nil)
        }
        return true
    }
}
