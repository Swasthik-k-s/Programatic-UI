//
//  LoginViewController.swift
//  CustomCell
//
//  Created by Swasthik K S on 10/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        // Do any additional setup after loading the view.
    }
    
//    var passwordField: UITextField = {
//        let password = UITextField()
//        password.placeholder = "Password"
//        password.isSecureTextEntry = true
//        password.backgroundColor = .white
//        password.layer.cornerRadius = 10
//        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        return password
//    }()
    
    var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 30
        return stack
    }()
    
    var emailTextField = CustomTextField(placeholder: "===")
    
    lazy var emailContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: emailTextField)
        
    }()
    
    var passwordTextField = CustomTextField(placeholder: "Password")
    
    lazy var passwordContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: passwordTextField)
        
    }()
    
    let emailContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.heightAnchor.constraint(equalToConstant: 50).isActive = true
        container.layer.cornerRadius = 5
        
        let iv = UIImageView()
        container.addSubview(iv)
        iv.image = UIImage(systemName: "person.fill")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        iv.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 10).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 24).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        let email = UITextField()
        container.addSubview(email)
        email.placeholder = "Email ID"
        email.backgroundColor = .white
        email.keyboardType = .emailAddress
        email.translatesAutoresizingMaskIntoConstraints = false
        email.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        email.leftAnchor.constraint(equalTo: iv.rightAnchor,constant: 10).isActive = true
        email.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -10).isActive = true
        email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return container
    }()
    
    let passwordContainerView: UIView = {
        let container = UIView()
        container.backgroundColor = .white
        container.heightAnchor.constraint(equalToConstant: 50).isActive = true
        container.layer.cornerRadius = 5
        
        let iv = UIImageView()
        container.addSubview(iv)
        iv.image = UIImage(systemName: "person")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        iv.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 10).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 24).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        let password = UITextField()
        container.addSubview(password)
        password.placeholder = "Password"
        password.isSecureTextEntry = true
        password.backgroundColor = .white
        password.translatesAutoresizingMaskIntoConstraints = false
        password.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        password.leftAnchor.constraint(equalTo: iv.rightAnchor,constant: 10).isActive = true
        password.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -10).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        return container
    }()
    
    @objc func handleLogin() {
        
    }
    
    func configureUI() {
        
        stackView.addArrangedSubview(emailContainer)
        stackView.addArrangedSubview(passwordContainer)
        stackView.addArrangedSubview(loginButton)
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50),
            
        ])
    }
    
}
