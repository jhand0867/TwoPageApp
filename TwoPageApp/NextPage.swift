//
//  NextPage.swift
//  TwoPageApp
//
//  Created by joseph on 2/6/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import UIKit

class NextPage: UIViewController {

    var recName: String?
    
    @IBOutlet weak var lblName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if recName != nil {
            self.lblName.text = recName
        } else {
            self.lblName.text = "Not set to a name"
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
