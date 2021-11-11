//
//  CollectionViewCell.swift
//  CustomCell
//
//  Created by Swasthik K S on 09/11/21.
//

import UIKit

class ConversionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    var messageLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    var profileImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 30
        image.backgroundColor = .white
        image.layer.borderWidth = 2
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        return image
    }()
    
    var dateLabel: UILabel = {
        let date = UILabel()
        date.textColor = .white
        date.font = UIFont.systemFont(ofSize: 12)
        return date
    }()
    
    var stackView: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 10
        stack.axis = .vertical
        return stack
    }()
    
    
    func configureCell() {
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(messageLabel)
        
        addSubview(stackView)
        addSubview(profileImage)
        addSubview(dateLabel)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            profileImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 60),
            profileImage.heightAnchor.constraint(equalToConstant: 60),
            
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 10),
            stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -60),
            
            dateLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
        
        ])
    }

}
