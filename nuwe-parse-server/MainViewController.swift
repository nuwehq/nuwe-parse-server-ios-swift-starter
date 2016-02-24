//
//  MainViewController.swift
//  nuwe-parse-server
//
//  Created by Steven Schofield on 24/02/2016.
//  Copyright © 2016 Beach. All rights reserved.
//

import UIKit
import Parse

class MainViewController: UIViewController {

    @IBOutlet weak var usernameTextLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    
    var currentUser = PFUser.currentUser()!.username
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Main View"

        // Do any additional setup after loading the view.
        var currentUser = PFUser.currentUser()
        if currentUser != nil {
            // Do stuff with the user
            self.usernameTextLabel.text = currentUser?.username
            self.emailTextLabel.text = currentUser?.email
        } else {
            // Show the signup or login screen
        }
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
    
    @IBAction func logoutButtonWasPressed(sender: AnyObject) {
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "LogoutSegueIdentifier" {
            
            PFUser.logOut() //Log user out
            
            currentUser = PFUser.currentUser()!.username //Reset currentUser variable to nil
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
