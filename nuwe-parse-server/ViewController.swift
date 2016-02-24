//
//  ViewController.swift
//  nuwe-parse-server
//
//  Created by Steven Schofield on 24/02/2016.
//  Copyright © 2016 Beach. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Register Account"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem = nil
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        var currentUser = PFUser.currentUser()
        if (currentUser?.username != nil) {
            self.performSegueWithIdentifier("registerSuccessSegueIdentifier", sender: self)
        }
    }
    
    // MARK: Actions
    
    @IBAction func userDidClickRegister(sender: AnyObject) {
        
        var user = PFUser()
        user.username = self.usernameTextfield.text
        user.email = self.emailTextfield.text
        user.password = self.passwordTextfield.text
        
        user.signUpInBackgroundWithBlock { (suceeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
            } else {
                print("Yay!");
                self.performSegueWithIdentifier("registerSuccessSegueIdentifier", sender: self)
            }
        }
    }


}

