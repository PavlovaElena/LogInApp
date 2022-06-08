//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 31.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var helloString: UILabel!
    
    var user: User!
    
    private let colorOne = UIColor(
        red: 254 / 255,
        green: 173 / 255,
        blue: 98 / 255,
        alpha: 1
    )
    
    private let colorTwo = UIColor(
        red: 196 / 255,
        green: 124 / 255,
        blue: 212 / 255,
        alpha: 1
    )
    
    private let colorThree = UIColor(
        red: 84 / 255,
        green: 191 / 255,
        blue: 199 / 255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloString.text = "Welcome, \(user.person.fullName)!"
        
        setGradient(topColor: colorOne, centerColor: colorTwo, bottomColor: colorThree)
    }
    
    private func setGradient(topColor: UIColor, centerColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [topColor.cgColor, centerColor.cgColor, bottomColor.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
