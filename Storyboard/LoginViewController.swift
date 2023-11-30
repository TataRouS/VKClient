//
//  LoginViewController.swift
//  VK
//
//  Created by Nata Kuznetsova on 24.11.2023.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var pictureVK: UILabel!
    
    
    @IBOutlet weak var autorization: UILabel!
  
    
    @IBOutlet weak var login: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
        
    @IBOutlet weak var enterVK: UIButton!
    
    
 //   @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//
//        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
//        view.addGestureRecognizer(tapGR)
    }
    
//    @objc func hideScreen() {
//        view.endEditing(true)
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(willShowKeyboard(_:)),
//                                               name: UIResponder.keyboardWillShowNotification,
//                                               object: nil)
//        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(willHideNotification(_:)),
//                                               name: UIResponder.keyboardWillHideNotification,
//                                               object: nil)
//        
//        // navigationController?.setNavigationBarHidden(true, animated: false)
//    }
//    
//    @objc func willShowKeyboard(_ notification: Notification) {
//        
//        guard let info = notification.userInfo as NSDictionary?,
//              let keyboardSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue else
//        {return}
//        
//        let keyboradHeight = keyboardSize.cgRectValue.size.height
//        
//        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboradHeight, right: 0)
//    }
//    
//    @objc func willHideNotification(_ notification: Notification) {
//        scrollView.contentInset = .zero
//    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        guard let login = login.text,
              let password = password.text,
              login == "",
              password == "" else {
            show(message: "Введены неверные данные пользователя")
            return
        }
        
        performSegue(withIdentifier: "Login", sender: nil)
    }
}
    
  

extension LoginViewController {
    func show(message: String) {
        
        let alertVC = UIAlertController(title: "ОШИБКА",
                                        message: message,
                                        preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        alertVC.addAction(okAction)
        
        present(alertVC, animated: true, completion: nil)
    }
}
