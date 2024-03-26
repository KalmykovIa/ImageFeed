//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Ярослав Калмыков on 25.02.2024.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    @IBAction func ExitButtonAction(_ sender: Any) {
    }
    
    @IBOutlet weak var ExitButton: UIButton!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Login: UILabel!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var avatar: UIImageView!
}
