//
//  ViewController.swift
//  TwoPageApp
//
//  Created by joseph on 2/6/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var SegDepartment: UISegmentedControl!
    
    // access user object
    var myUser = User()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.txtName.text = ""
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        myUser.name = self.txtName.text
        myUser.email = self.txtEmail.text
        myUser.password = self.txtPassword.text
        myUser.department = self.SegDepartment.selectedSegmentIndex
        
        if segue.identifier == "segueNext1" {
            let dest = segue.destination as! NextPage
            dest.myUser  = self.myUser
        }
    }

    
}

