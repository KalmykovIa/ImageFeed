//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Ярослав Калмыков on 25.02.2024.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    private lazy var imageView = UIImageView()
    private lazy var userNameLabel = UILabel()
    private lazy var userLoginLabel = UILabel()
    private lazy var discriptionLabel = UILabel()
    private lazy var button : UIButton = {
        let button = UIButton()
        let image = UIImage(named: "logoutButton")
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        setupView()
    }
    
    func setupView() {
        creatProfileImage()
        creatLogoutButton()
        creatUserNameLabel()
        creatUserLoginLabel()
        createDiscriptionLabel()
    }
    
    func creatProfileImage() {
        let profileImage = UIImage(named: "avatar")
        imageView = UIImageView(image: profileImage)
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }
    
    func creatLogoutButton() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
    
    func creatUserNameLabel() {
        userNameLabel = UILabel()
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameLabel)
        
        userNameLabel.text = "Екатерина Новикова"
        userNameLabel.font = UIFont.boldSystemFont(ofSize: 23)
        userNameLabel.textColor = .ypWhite
        
        NSLayoutConstraint.activate([
            userNameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            userNameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8)
        ])
    }
    
    func creatUserLoginLabel() {
        userLoginLabel = UILabel()
        userLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userLoginLabel)
        
        userLoginLabel.text = "@ekaterina_nov"
        userLoginLabel.font = UIFont.systemFont(ofSize: 13)
        userLoginLabel.textColor = .ypGray
        
        NSLayoutConstraint.activate([
            userLoginLabel.leadingAnchor.constraint(equalTo: userNameLabel.leadingAnchor),
            userLoginLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8)
        ])
    }
    
    func createDiscriptionLabel() {
        discriptionLabel = UILabel()
        discriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(discriptionLabel)
        
        discriptionLabel.text = "Hello, world!"
        discriptionLabel.font = UIFont.systemFont(ofSize: 13)
        discriptionLabel.textColor = .ypWhite
        
        NSLayoutConstraint.activate([
            discriptionLabel.leadingAnchor.constraint(equalTo: userLoginLabel.leadingAnchor),
            discriptionLabel.topAnchor.constraint(equalTo: userLoginLabel.bottomAnchor, constant: 8)
        ])
    }
    
    
    @objc func didTapButton() {

    }
}
