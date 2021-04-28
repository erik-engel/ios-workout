//
//  ViewControllerChest.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 26/04/2021.
//

import UIKit

class ViewControllerChest: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var stacView: UIStackView!
    
    
    @IBOutlet weak var FirstExercise: UILabel!
    
    @IBOutlet weak var secondExercise: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewControllerChest.tapFunction1))
        FirstExercise.isUserInteractionEnabled = true
        FirstExercise.addGestureRecognizer(tap)
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(ViewControllerChest.tapFunction2))
        secondExercise.isUserInteractionEnabled = true
        secondExercise.addGestureRecognizer(tap1)
        
        
        
        
    }
    
    @objc
    func tapFunction1(sender:UITapGestureRecognizer){
        print("Tap worked!")
        performSegue(withIdentifier: "chest1", sender: sender)
    }
    
    @objc
    func tapFunction2(sender:UITapGestureRecognizer){
        print("Tap worked!")
        performSegue(withIdentifier: "chest2", sender: sender)
    }
    
    @IBAction func firstDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func secondDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func thirdDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func fourthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func fifthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    
    @IBAction func sixthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func seventhDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    @IBAction func eigthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func ninthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    @IBAction func tenthDoneChanged(_ sender: UISegmentedControl) {
        progressChangeOnSegmentChange(sender)
    }
    
    func progressChangeOnSegmentChange(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("Hello")
            progressView.progress -= 0.1
            break
        case 1:
            print("Hello from second")
            progressView.progress += 0.1
            break
        default:
            break
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
