//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 02.12.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    //MARK: Propperty
    
    var userName: String?

    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userName = userName else { return }
        greetingsLabel.text = "Приветствую, \(userName)!"
    }
}
