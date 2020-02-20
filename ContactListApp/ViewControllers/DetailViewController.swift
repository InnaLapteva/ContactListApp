//
//  DetailViewController.swift
//  ContactListApp
//
//  Created by Manager on 20/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var person: Person!

    @IBOutlet var fullnameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        fullnameLabel.text = person.fullname
        emailLabel.text = "E-mail: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        
    }

}
