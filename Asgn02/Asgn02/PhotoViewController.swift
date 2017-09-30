//
//  PhotoViewController.swift
//  Asgn02
//
//  Created by Yiqi on 28/9/17.
//  Copyright © 2017 Yiqi. All rights reserved.
//

import Foundation
import UIKit

class PhotoViewController: UIViewController,
UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photolibrary: UIButton!
    @IBOutlet weak var camera: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func photolibraryAction(_ sender: UIButton) {
        
     let picker = UIImagePickerController()
        picker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            picker.sourceType = .photoLibrary
            present(picker, animated: true,completion: nil)
        }
        else{
            print("Photo Library Not Available")
        }

    }
    
    @IBAction func cameraAction(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
            present(picker, animated: true,completion: nil)
        }
        else{
            print("Camera Not Available")
        }
        

        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image =
            info[UIImagePickerControllerOriginalImage] as! UIImage; dismiss(animated: true,completion: nil)
    
}
}
