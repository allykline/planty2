//
//  ViewController.swift
//  Planty
//
//  Created by OG Sara on 7/26/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {
    
        @IBOutlet weak var imagePicked: UIImageView!
    
    @IBAction func PictureButton(sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
            imagePicker.allowsEditing = false
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}



