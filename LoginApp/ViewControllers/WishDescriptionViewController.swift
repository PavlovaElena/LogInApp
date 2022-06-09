//
//  WishDescriptionViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 08.06.2022.
//

import UIKit

class WishDescriptionViewController: UIViewController {
    
    var wish: Wish!
    
    @IBOutlet weak var wishImageView: UIImageView!
    @IBOutlet weak var wishTitleLabel: UILabel!
    @IBOutlet weak var wishDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wishImageView.image = UIImage(named: wish.image)
        wishImageView.layer.cornerRadius = 10
        
        wishTitleLabel.text = wish.title
        wishDescriptionLabel.text = wish.description
    }
}
