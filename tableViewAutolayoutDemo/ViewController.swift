//
//  ViewController.swift
//  tableViewAutolayoutDemo
//
//  Created by admin on 31/12/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!

    var students = [(title: "Rahul", details: "iOS developer Noida(201301) Utter Prsdesh India "),(title: "Radha", details: "Radha is an important goddess in the Vaishnavism traditions of Hinduism. Her traits, manifestations, descriptions, and roles vary by region. Since the earliest times, she has been associated with the cowherd Krishna, who is the speaker of the Bhagavad Gita.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        //self.tableView.estimatedRowHeight = 44.0
       // self.tableView.rowHeight = UITableView.automaticDimension
        
    }
    
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableCell") as! TableCell
        let dict = students[indexPath.row]
        cell.titleLbl.text = dict.title
        cell.detailLbl.text = dict.details
        return cell
    }
    
    
}
