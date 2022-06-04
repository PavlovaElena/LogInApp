//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 31.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var helloString: UILabel!
    
    var helloUserString = ""
    
    private let colorOne = UIColor(
        red: 64 / 255,
        green: 224 / 255,
        blue: 208 / 255,
        alpha: 1
    )
    
    private let colorTwo = UIColor(
        red: 255 / 255,
        green: 140 / 255,
        blue: 0 / 255,
        alpha: 1
    )
    
    private let colorThree = UIColor(
        red: 255 / 255,
        green: 0 / 255,
        blue: 127 / 255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloString.text = "Welcome, \(helloUserString)!"
        
        setGradient(topColor: colorOne, centerColor: colorTwo, bottomColor: colorThree)
    }
    
    private func setGradient(topColor: UIColor, centerColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
