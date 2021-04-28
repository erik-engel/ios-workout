//
//  ViewControllerOrangeViewController.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 10/04/2021.
//

import UIKit
import FirebaseAuth

class ViewControllerOrange: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lbl: UILabel!
    var items = ["Workout Locations", "My Progress", "Workout Sessions"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        lbl.text = "Hello and welcome to your personal workout app. In this app you will have the opportunity to:\n - View outdoor workout locations\n - Log your progress\n - And find workout-plans for inspiration\n\nNavigate through the options in the top"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell1", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "segue2", sender: self)
        };if indexPath.row == 1{
            performSegue(withIdentifier: "segue3", sender: self)
        };if indexPath.row == 2{
            performSegue(withIdentifier: "segue4", sender: self)
        };
    }

}
