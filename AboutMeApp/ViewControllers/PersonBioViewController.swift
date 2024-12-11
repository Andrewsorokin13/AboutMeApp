//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 11.12.2024.
//

import UIKit

class PersonBioViewController: UIViewController {
    
    // MARK: IB Outlets
    
    @IBOutlet weak var bioLabel: UILabel!
    
    //MARK: Propperty
    
    var person: Person!
    
    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        title = person.fullName
        bioLabel.text = person.bio
    }
    
}
