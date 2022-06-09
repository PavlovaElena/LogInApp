//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 08.06.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = UIImage(named: user.person.photo)
        photoImageView.layer.cornerRadius = 10
        
        nameLabel.text = "My name is \(user.person.fullName)👩🏻‍💻"
        descriptionLabel.text = user.person.description
    }
}
