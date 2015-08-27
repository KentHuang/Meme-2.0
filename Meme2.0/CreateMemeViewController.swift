//
//  CreateMemeViewController.swift
//  Meme2.0
//
//  Created by Kent Huang on 8/27/15.
//  Copyright (c) 2015 Kent Huang. All rights reserved.
//

import UIKit

class CreateMemeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(.Camera)
        saveButton.enabled = (imageView.image != nil) && ((topTextField.text != nil) || (bottomTextField.text != nil))
    }
    
    // MARK: Top Toolbar
    
    @IBAction func goBack(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveMeme(sender: UIBarButtonItem) {
    }
    
    func save() {
        //Create the meme
//        var meme = Meme( text: textField.text!, image: imageView.image, memedImage: memedImage)
        
        // Add it to the memes array in the Application Delegate
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
//        appDelegate.memes.append(meme)
    }
    
    // MARK: Bottom Toolbar
    
    @IBAction func goToCamera(sender: UIBarButtonItem) {
        let controller = UIImagePickerController()
        controller.sourceType = UIImagePickerControllerSourceType.Camera
        controller.delegate = self
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func goToPhotoAlbum(sender: UIBarButtonItem) {
        let controller = UIImagePickerController()
        controller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        controller.delegate = self
        self.presentViewController(controller, animated: true, completion: nil)
    }

}
