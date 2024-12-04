//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 02.12.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userName = userName else { return }
        greetingsLabel.text = "Приветствую, \(userName)!"
    }
    
    
}
