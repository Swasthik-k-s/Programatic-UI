//
//  SignUpViewController.swift
//  CustomCell
//
//  Created by Swasthik K S on 10/11/21.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    var photo: UIImageView = {
        let photo = UIImageView()
        photo.image = UIImage(systemName: "person.fill")

        photo.backgroundColor = .blue
        photo.contentMode = .scaleAspectFill
        photo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        photo.widthAnchor.constraint(equalToConstant: 100).isActive = true
        photo.layer.cornerRadius = 50
        photo.tintColor = .yellow
        photo.clipsToBounds = true
        return photo
    }()
    
    let firstNameContainerView: UIView = {
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
        
        let firstName = UITextField()
        container.addSubview(firstName)
        firstName.placeholder = "First Name"
        firstName.backgroundColor = .white
        firstName.translatesAutoresizingMaskIntoConstraints = false
        firstName.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        firstName.leftAnchor.constraint(equalTo: iv.rightAnchor,constant: 10).isActive = true
        firstName.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -10).isActive = true
        firstName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return container
    }()
    
    let lastNameContainerView: UIView = {
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
        
        let lastName = UITextField()
        container.addSubview(lastName)
        lastName.placeholder = "Last Name"
        lastName.backgroundColor = .white
        lastName.translatesAutoresizingMaskIntoConstraints = false
        lastName.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        lastName.leftAnchor.constraint(equalTo: iv.rightAnchor,constant: 10).isActive = true
        lastName.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -10).isActive = true
        lastName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return container
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
        email.placeholder = "Email"
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
        iv.image = UIImage(systemName: "person.fill")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        iv.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 10).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 24).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        let password = UITextField()
        container.addSubview(password)
        password.placeholder = "Password"
        password.backgroundColor = .white
        password.isSecureTextEntry = true
        password.translatesAutoresizingMaskIntoConstraints = false
        password.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        password.leftAnchor.constraint(equalTo: iv.rightAnchor,constant: 10).isActive = true
        password.rightAnchor.constraint(equalTo: container.rightAnchor, constant: -10).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return container
    }()
    
    
    var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("SignUp", for: .normal)
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
        
        stackView.addArrangedSubview(firstNameContainerView)
        stackView.addArrangedSubview(lastNameContainerView)
        stackView.addArrangedSubview(emailContainerView)
        stackView.addArrangedSubview(passwordContainerView)
        stackView.addArrangedSubview(signUpButton)
        
        view.addSubview(photo)
        view.addSubview(stackView)
        
        photo.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
//        emailField.translatesAutoresizingMaskIntoConstraints = false
//        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50),

        ])
    }

}
