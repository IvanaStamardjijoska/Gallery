//
//  ViewController.swift
//  Camera
//
//  Created by CodeWell on 12/10/18.
//  Copyright © 2018 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {


    @IBOutlet weak var profileImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            self.present(picker, animated: true, completion: {
                print("The camera opened")
           
            })
        } else {
            print("This device has no camera")
            
           
            
        }
        
        

}
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(info)
        let image1 = info[UIImagePickerControllerOriginalImage] as! UIImage?
        profileImage.image = image1
        picker.dismiss(animated: true)
    }
    @IBAction func galleryButton(_ sender: Any) {
        
            let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            self.present(picker, animated: true, completion: {
                print("The camera opened")
                
                
            })
            
            picker.delegate = self
        
}
    
}
