//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 09.12.2024.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: IB Outlets
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    //MARK: Propperty
    
    var user: User!
    
    // MARK: - Overrides Methods
    
    override func viewDidLoad() {
        setupUserProfile()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personBioVC = segue.destination as? PersonBioViewController
        personBioVC?.person = user.person
    }
    
    override func viewDidLayoutSubviews() {
        setupAvatarAppearance()
    }
    
    // MARK: - Private Methods
    
    private func setupUserProfile() {
        title = user.person.fullName
        avatarImageView.image = UIImage(named: user.person.imageName)
        nameLabel.text = user.person.name
        lastNameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        jobTitleLabel.text = user.person.jobTitle.titleJob
    }
    
    private func setupAvatarAppearance() {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width / 2
        avatarImageView.layer.borderWidth = 2.0
        avatarImageView.layer.borderColor = UIColor.lightGray.cgColor
        avatarImageView.clipsToBounds = true
    }
}
