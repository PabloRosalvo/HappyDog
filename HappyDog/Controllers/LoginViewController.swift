//
//  UserViewController.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 26/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController, LoginDelegate {
    
    let navigation: UINavigationController
    let viewModel: LoginViewModel
    
    private lazy var loginView: LoginView =  {
        let view = LoginView(frame: .zero, delegate: self)
        view.emailUserTextField.delegate = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchTokenUser()
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    init(viewModel: LoginViewModel = LoginViewModel(), navigation: UINavigationController) {
        self.viewModel = viewModel
        self.navigation = navigation
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fetchTokenUser() {
        self.viewModel.fetchTokenUser { success in
            
        }
    }
    
    func actionButon() {
        print("action ok")
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let replacementText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        if textField == loginView.emailUserTextField {
            guard replacementText.isValidEmail() else {
                self.loginView.messageEmail.text = "Email invalido"
                return true
            }
            self.loginView.messageEmail.text = ""
        }
        return true
    }
}
