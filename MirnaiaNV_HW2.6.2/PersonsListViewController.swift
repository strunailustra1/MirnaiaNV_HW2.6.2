//
//  PersonsListViewController.swift
//  MirnaiaNV_HW2.6.2
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<PersonBuilder.nameList.count {
            personsList.append(PersonBuilder.getPerson())
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].initials
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personsList[indexPath.section]
        
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone
        
        return cell
    }
}
