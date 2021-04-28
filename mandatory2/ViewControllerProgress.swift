//
//  ViewControllerProgress.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 16/04/2021.
//

import UIKit
import Firebase

class ViewControllerProgress: UIViewController, Updatable {
    
    private var db = Firestore.firestore()
    
    private var arrayWeight = [Int]()
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var weight: UITextField!
    
    weak var imgselect : UIImageView!
    
    @IBAction func cam1Pressed(_ sender: UIButton) {
        myImagePicker.sourceType = .camera
        imgselect = imageView1
        present(myImagePicker, animated: true)
    }
    
    @IBAction func lib1Pressed(_ sender: UIButton) {
        myImagePicker.sourceType = .photoLibrary
        imgselect = imageView1
        present(myImagePicker, animated: true)
    }
    
    @IBAction func cam2Pressed(_ sender: UIButton) {
        myImagePicker.sourceType = .camera
        imgselect = imageView2
        present(myImagePicker, animated: true)
    }
    
    
    @IBAction func lib2Pressed(_ sender: UIButton) {
        myImagePicker.sourceType = .photoLibrary
        imgselect = imageView2
        present(myImagePicker, animated: true)
    }
    
    @IBAction func saveToLib1(_ sender: UIButton) {
        imgselect = imageView1
        if let img = imgselect.image {
            UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
        }
    }
    
    @IBAction func saveToLib2(_ sender: Any) {
        imgselect = imageView2
        if let img = imgselect.image {
            UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
        }
    }
    
    @IBAction func updateWeight(_ sender: UIButton) {
        if let num = Int(weight.text!) {
            if num > 0 {
                let numb = self.arrayWeight.count+1
                let doc = db.collection("weight").document(String(numb))
                var data = [String:Int]()
                data["weight"] = num
                doc.setData(data)
            }
        }
    }
    
    
    
    var myImagePicker = MyImagePicker()
    
    override func viewDidLoad() {
        startListener()
        let seconds = 1.0
        
        super.viewDidLoad()
        myImagePicker.parentVC = self
        lbl.text = "Welcome! Here you can add and track your progress.\n\nYou can add your weight and change it when you've lost weight!\n\nYou can also add a before and after photo, from camera or libary.\n\nYou also have the opportunitie to save the picture to your phone"
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds){
            self.weight.text = String(self.arrayWeight[self.arrayWeight.count-1])
        }
        
    }
    
    func startListener(){
        db.collection("weight").addSnapshotListener { (snap, error) in
            if let e = error {
                print("error fetching data \(e)")
            } else {
                if let s = snap {
                    for doc in s.documents {
                        //print(doc.data()["weight"] as! Int)
                        //print(doc.documentID)
                        self.arrayWeight.append(doc.data()["weight"] as! Int)
                    }
                }
                print(self.arrayWeight[self.arrayWeight.count-1])
                print(self.arrayWeight.count)
            }
        }
    }

    func update(obj: NSObject?) {
        if let img = obj as? UIImage {
            imgselect.image = img
        }
    }
}

