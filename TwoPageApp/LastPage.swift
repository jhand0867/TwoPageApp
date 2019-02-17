//
//  LastPage.swift
//  TwoPageApp
//
//  Created by joseph on 2/6/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class LastPage: UIViewController {

    var LpUser = User()
    
    @IBOutlet weak var LpName: UITextField!
    
//    @IBAction func nameUpdate(_ sender: UIButton) {
//        //LpUser.name = self.LpName.text
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        LpUser.name = self.LpName.text
        let dest = segue.destination as! NextPage
        dest.myUser = self.LpUser
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if self.LpUser.name != nil {
            self.LpName.text = self.LpUser.name
        }
        
        
    }
    
    
    
//    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
//
//        if unwindSegue.identifier == "segueLast1" {
//
//            let dest = unwindSegue.destination as! NextPage
//
//            dest.myUser = self.LpUser
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func clickBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
