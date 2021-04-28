//
//  ViewControllerPUC.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 28/04/2021.
//

import UIKit

class ViewControllerPUC: UIViewController {

    @IBOutlet weak var txtPUC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtPUC.text = "Clap Push-Ups\n\n- Can you do around 30 regular Push-Ups? Then you are strong enough for Clap Push-Ups;\n\n-start in the same position as regular Push-Ups;\n\n-bring your feet closer than shoulder-width to make sure you won’t use your legs to push-up;\n\n-bring your body down with a tight core and back;\n\n-put yourself up really explosive;\n\n-make sure that you only use your upper body;\n\n-clap your hands before landing;\n\n-land softly and in the same position as your starting position;\n\n-make sure that you never land on extended arms;\n\n-do 20 repetitions of this calisthenics chest exercise!"
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
