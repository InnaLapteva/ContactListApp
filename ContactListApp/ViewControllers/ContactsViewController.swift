//
//  ContactsViewController.swift
//  ContactListApp
//
//  Created by Manager on 20/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    //MARK: Properties
    
    let contatctList = Person.getPersonsContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contatctList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     
        cell.textLabel?.text = contatctList[indexPath.row].fullname
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = contatctList[indexPath.row]
            
        }
    }
}
