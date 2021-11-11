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
        view.backgroundColor = .white
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
    
    var firstNameTextField = CustomTextField(placeholder: "First Name")
    var lastNameTextField = CustomTextField(placeholder: "Last Name")
    var emailTextField = CustomTextField(placeholder: "Email")
    var passwordTextField = CustomTextField(placeholder: "Password")
    
    lazy var firstNameContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: firstNameTextField)
        
    }()
    
    lazy var lastNameContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: lastNameTextField)
    }()
    
    lazy var emailContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: emailTextField)
        
    }()
    
    lazy var passwordContainer: InputContainerView = {
       return InputContainerView(image: UIImage(systemName: "person.fill")!, textField: passwordTextField)
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
        
        stackView.addArrangedSubview(firstNameContainer)
        stackView.addArrangedSubview(lastNameContainer)
        stackView.addArrangedSubview(emailContainer)
        stackView.addArrangedSubview(passwordContainer)
        stackView.addArrangedSubview(signUpButton)
        
        view.addSubview(photo)
        view.addSubview(stackView)
        
        photo.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50),

        ])
    }

}
