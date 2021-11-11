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
    
    var emailTextField = CustomTextField(placeholder: "Email")
    var passwordTextField = CustomTextField(placeholder: "Password")
    
    lazy var emailContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: emailTextField)
        
    }()
    
    lazy var passwordContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: passwordTextField)
    }()
    
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
