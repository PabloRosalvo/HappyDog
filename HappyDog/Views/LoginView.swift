//
//  LoginView.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 01/07/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//


import UIKit
import SnapKit

protocol LoginDelegate: AnyObject {
    func actionButon()
}

final class LoginView: UIView, ViewCode {
    
    weak var delegate: LoginDelegate?
    
    private let nameAppLabel: UILabel = {
        let label = UILabel()
        label.text = "Happy Dog ;)"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        label.textColor = .purple
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog")
        imageView.layer.cornerRadius = 50
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let typeNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Digite seu nome"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .purple
        return label
    }()
    
    let emailUserTextField: UITextField = {
        let textField = UITextField()
        textField.setPlaceholder(text: "Digite seu email")
        textField.font = UIFont.regular(ofSize: 15)
        textField.layer.borderColor = UIColor.purple.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 8
        textField.applyLeftTextPadding()
        return textField
    }()
    
    let messageEmail: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .purple
        return label
    }()
        
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    init(frame: CGRect, delegate: LoginDelegate? = nil) {
        super.init(frame: .zero)
        self.delegate = delegate
        setupViews()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews() {
        self.backgroundColor = .white
        self.actionButton()
    }
    
    @objc
    func actionButton() {
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
    }
    
    @objc
    func login() {
        delegate?.actionButon()
    }
    
    func setupViewHierarchy() {
        addSubview(nameAppLabel)
        addSubview(typeNameLabel)
        addSubview(imageView)
        addSubview(emailUserTextField)
        addSubview(messageEmail)
        addSubview(button)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(24)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        nameAppLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(5)
            make.trailing.equalTo(self.snp.trailing)
            make.leading.equalTo(self.snp.leading)
            make.centerX.equalTo(self.snp.centerX)
        }
        
        typeNameLabel.snp.makeConstraints { make in
            make.top.equalTo(nameAppLabel.snp.bottom).offset(12)
            make.trailing.equalTo(self.snp.trailing).offset(-24)
            make.leading.equalTo(self.snp.leading).offset(24)
            make.height.equalTo(40)
            make.width.equalTo(80)
        }
               
        emailUserTextField.snp.makeConstraints { make in
            make.top.equalTo(typeNameLabel.snp.bottom)
            make.trailing.equalTo(typeNameLabel.snp.trailing).offset(-24)
            make.leading.equalTo(self.snp.leading).offset(24)
            make.height.equalTo(40)
        }
        
        messageEmail.snp.makeConstraints { make in
            make.top.equalTo(emailUserTextField.snp.bottom)
            make.trailing.equalTo(typeNameLabel.snp.trailing).offset(-24)
            make.leading.equalTo(self.snp.leading).offset(24)
            make.height.equalTo(40)
        }
        
        button.snp.makeConstraints { make in
            make.bottom.equalTo(self.snp.bottom).offset(-58)
            make.trailing.equalTo(self.snp.trailing).offset(-24)
            make.leading.equalTo(self.snp.leading).offset(24)
            make.height.equalTo(48)
        }
        
    }
}
