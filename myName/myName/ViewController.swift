//
//  ViewController.swift
//  myName
//
//  Created by ICMMAC05-7528 on 11/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbAnswerhow: UILabel!
    
    var check = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btWhatride(_ sender: Any) {
        if check{
            lbAnswerhow.text = "Moto"
        }else{
            lbAnswerhow.text = "What kind of ride you have?"
        }
        check = !check
    }
    
}

