//
//  ViewController.swift
//  Multiselection Gestures Demo
//
//  Created by Amit Rai on 26/11/19.
//  Copyright © 2019 Amit Rai. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var data: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = editButtonItem
        tableView.allowsMultipleSelectionDuringEditing = true
        importingDataInTableView()
     }
    
    func importingDataInTableView() {
        data = [
            Data(number: 1),
            Data(number: 2),
            Data(number: 3),
            Data(number: 4),
            Data(number: 5),
            Data(number: 6),
            Data(number: 7),
            Data(number: 8),
            Data(number: 9),
            Data(number: 10),
            Data(number: 11),
            Data(number: 12),
            Data(number: 13),
            Data(number: 14),
            Data(number: 15),
            Data(number: 16),
        ]

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(data[indexPath.row].number)"
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
        self.setEditing(true, animated: true)
    }
    
    override func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView) {
        print("\(#function)")
    }
    
}
