//
//  EmailUpdateViewController.swift
//  TwoPageApp
//
//  Created by joseph on 2/14/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class EmailUpdateViewController: UIViewController {
    
    var myUser = User()
    
    @IBOutlet weak var emailTextField: UITextField!
    
//    @IBAction func updateEmailUpdatePage(_ sender: UIButton) {
//        self.myUser.email = self.emailTextField.text
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if self.myUser.email != nil {
            self.emailTextField.text = self.myUser.email
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeEmailUpdatePage(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.myUser.email = self.emailTextField.text
        let dest = segue.destination as! NextPage
        dest.myUser = self.myUser
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
