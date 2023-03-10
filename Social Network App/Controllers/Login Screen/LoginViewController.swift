//
//  LoginViewController.swift
//  Social Network App
//
//  Created by Максим on 30.12.2021.

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!


    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardDidShown(_:)),
                                               name: UIResponder.keyboardDidShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardDidHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)

        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)

    }

    @objc func keyboardDidShown (_ notification: Notification) {
        guard let keyboardHeight = ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue)?.height else {return}

        let insets = UIEdgeInsets(top: 0,
                                  left: 0,
                                  bottom: keyboardHeight + 150,
                                  right: 0)
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }

    @objc func keyboardDidHide () {
        scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
    }

    @objc func onTap () {
        self.view.endEditing(true)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: loginSuccess, sender: nil)
//        guard let login = loginField.text,
//              let password = passwordField.text else {return}
//        if login == "root", password == "12345" {
//        performSegue(withIdentifier: loginSuccess, sender: nil)
//        } else {
//            let loginAlert = UIAlertController(title: "Введён неверный логин или пароль", message: "Проверьте введённые данные или обратитесь к техническому специалисту.", preferredStyle: .alert)
//            let loginAction = UIAlertAction(title: "ОК", style: .cancel, handler: nil)
//            loginAlert.addAction(loginAction)
//            present(loginAlert, animated: true, completion: nil)
//        }

    }

    @IBAction func forgottenPassword () {
        let forgottenPasswordAlert = UIAlertController(title: unrealisedFunction, message: "Ожидаем его реализацию в следующей версии приложения.", preferredStyle: .alert)
        let forgottenPasswordAction = UIAlertAction(title: "ОК",
                                                    style: .cancel,
                                                    handler: nil)
        forgottenPasswordAlert.addAction(forgottenPasswordAction)
        present(forgottenPasswordAlert, animated: true, completion: nil)
    }
}
