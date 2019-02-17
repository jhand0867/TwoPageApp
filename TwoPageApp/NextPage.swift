//
//  NextPage.swift
//  TwoPageApp
//
//  Created by joseph on 2/6/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit


class NextPage: UIViewController {
    
    var myUser = User()
    
    
    @IBOutlet weak var lblName: UILabel!

    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblPassword: UILabel!

    @IBOutlet weak var lblDepartment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //var myData = datFromMain()
        
        if self.myUser.name != nil {
            self.lblName.text = self.myUser.name
            
        } else {
            self.lblName.text = "Not set to a name"
        }
        
        if self.myUser.email != nil {
            self.lblEmail.text = self.myUser.email
            
        } else {
            self.lblEmail.text = "Not set to an email"
        }
        
        if self.myUser.password != nil {
            self.lblPassword.text = "********"
        } else {
            self.lblPassword.text = ""
        }
        
        switch self.myUser.department {
        case 1:
            self.lblDepartment.text = "SIS"
        case 2:
            self.lblDepartment.text = "BIO"
        default:
            self.lblDepartment.text = "CS"
        }

    }
    
    private func updateData() {
        self.lblName.text =  self.myUser.name
        self.lblEmail.text = self.myUser.email
    }
    
    @IBAction func chachita (unwindsegue: UIStoryboardSegue) {

        if unwindsegue.identifier == "backFromEmail" {
            //self.lblEmail.text = self.myUser.email
            updateData()
        }

        if unwindsegue.identifier == "backFromName" {
            //self.lblName.text = self.myUser.name
            updateData()
        }
        
    }
    
    @IBOutlet weak var btnShow: UIButton!
    
    @IBAction func ShowPassword(_ sender: UIButton) {
        
        if sender.currentTitle == "Show" {
            self.btnShow.setTitle("Hide", for: UIControl.State.normal)
            
            if self.myUser.password != nil {
                self.lblPassword.text = self.myUser.password
            } else {
                self.lblPassword.text = ""
            }
        
        } else {
            self.btnShow.setTitle("Show", for: UIControl.State.normal)
            var maskPwd: String = ""
            if self.myUser.password != nil {
                let charsInPwd: Int! = self.myUser.password?.count
                for _ in 0..<charsInPwd {
                    maskPwd = maskPwd + "*"
                }
                self.lblPassword.text = maskPwd
                
            } else {
                
                _ = self.myUser.password?.count
//                let charsHide = self.myUser.password?.replacingCharacters(in: 0..<myUser.password!.count
//                    , with: "*")

                
                //self.lblPassword.text = charsHide
                
            }
            
        }
     }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueLast1" {
            let dest = segue.destination as! LastPage
            dest.LpUser  = self.myUser
        }
        
        if segue.identifier == "updateEmailSegue" {
            let dest = segue.destination as! EmailUpdateViewController
            dest.myUser  = self.myUser
        }
    }

    
    @IBAction func clickClose(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
