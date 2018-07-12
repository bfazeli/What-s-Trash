//
//  ViewController.swift
//  What's Trash
//
//  Created by Bijan Fazeli on 7/11/18.
//  Copyright © 2018 Fazeli, Bijan. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let usrPickedImg = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = usrPickedImg
        } else {
            fatalError()
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }

    @IBAction func cameraPressed(_ sender: UIBarButtonItem) {
       present(imagePicker, animated: true, completion: nil)
    }
    
}

