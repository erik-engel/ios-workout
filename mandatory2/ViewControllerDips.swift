//
//  ViewControllerDips.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 28/04/2021.
//

import UIKit

class ViewControllerDips: UIViewController {

    @IBOutlet weak var txtDip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtDip.text = "Dips:\n\n-Grab the bars, jump up and straighten your arms;\n\n-bring your body down by bending your arms;\n\n-make sure to lean forward until your shoulders are below your elbows;\n\n-lift yourself up by straightening your arms;\n\n-is this too difficult for you? Use resistance bands or do negative dips.\n\n-do 20 repetitions of this calisthenics chest exercise."
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
