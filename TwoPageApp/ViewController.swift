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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.txtName.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "segueNext1" {
            let dest = segue.destination as! NextPage
            dest.recName = self.txtName.text
        }
        
    }

    
    @IBAction func clickSubmit(_ sender: UIButton) {
        
       // NextPage.show(NextPage)
    }
}

