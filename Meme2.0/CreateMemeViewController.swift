//
//  CreateMemeViewController.swift
//  Meme2.0
//
//  Created by Kent Huang on 8/27/15.
//  Copyright (c) 2015 Kent Huang. All rights reserved.
//

import UIKit

class CreateMemeViewController: UIViewController {
    
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Save meme
    
    func save() {
        //Create the meme
//        var meme = Meme( text: textField.text!, image: imageView.image, memedImage: memedImage)
        
        // Add it to the memes array in the Application Delegate
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
//        appDelegate.memes.append(meme)
    }

}
