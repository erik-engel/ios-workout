//
//  ViewControllerWorkouts.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 16/04/2021.
//

import UIKit

class ViewControllerWorkouts: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = ["Monday = Chest!", "Tuesday = Back", "Wednesday = Biceps!", "Thursday = Triceps!", "Friday = Abbs!", "Saturday = Rest", "Sunday = Cardio!",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
            
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            tableView
            .dequeueReusableCell(withIdentifier:
            "mycell2", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "segue5", sender: self)
        };
        if indexPath.row == 1 {
            performSegue(withIdentifier: "segue6", sender: self)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
