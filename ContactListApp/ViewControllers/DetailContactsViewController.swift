//
//  DetailContactsViewController.swift
//  ContactListApp
//
//  Created by Manager on 20/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class DetailContactsViewController: UITableViewController {
    
     let contatctList = Person.getPersonsContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contatctList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
      if indexPath.row == 0 {
        cell.textLabel?.text = "E-mail: \(contatctList[indexPath.section].email)"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Phone: \(contatctList[indexPath.section].phoneNumber)"
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let tittle = UILabel()
        tittle.text = contatctList[section].fullname
        tittle.backgroundColor = .gray
        tittle.textAlignment = .center
        
        return tittle
    }

}
