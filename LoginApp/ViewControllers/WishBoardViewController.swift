//
//  WishBoardViewController.swift
//  LoginApp
//
//  Created by Елена Павлова on 08.06.2022.
//

import UIKit

class WishBoardViewController: UIViewController {
    
    @IBOutlet var wishButtons: [UIButton]!
    
    var user: User!
    
    private var currentWishIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(user.person.name)'s wish board"
        
        setImageOnButtons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let wishDescriptionVC = segue.destination as? WishDescriptionViewController else { return }
        wishDescriptionVC.wish = user.person.wishes[currentWishIndex]
    }
    
    @IBAction func wishDetailButtonPressed(_ sender: UIButton) {
        guard let index = wishButtons.firstIndex(of: sender) else { return }
        currentWishIndex = index
        performSegue(withIdentifier: "showWishDescription", sender: nil)
    }
    
    private func setImageOnButtons() {
        var index = 0
        for button in wishButtons {
            button.setBackgroundImage(UIImage(named: "\(user.person.wishes[index].image)"), for: .normal)
            button.layer.cornerRadius = 5
            index += 1
        }
    }
}
