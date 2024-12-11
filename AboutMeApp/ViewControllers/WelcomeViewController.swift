//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 02.12.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    //MARK: Propperty
    
    var user: User!
    
    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = """
            Приветствую, \(user.login)!
            Меня зовут \(user.person.fullName).
            """
    }
}
