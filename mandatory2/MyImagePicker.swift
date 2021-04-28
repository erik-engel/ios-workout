//
//  MyImagePicker.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 22/04/2021.
//

import UIKit

class MyImagePicker: UIImagePickerController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var parentVC:Updatable?
    override func viewDidLoad() {
        super.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("Back with an image \(info.description)")
        if let img = info[.originalImage] as? UIImage{
            parentVC?.update(obj: img)
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
    



