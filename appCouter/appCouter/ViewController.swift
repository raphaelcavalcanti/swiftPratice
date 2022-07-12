//
//  ViewController.swift
//  appCouter
//
//  Created by ICMMAC05-7528 on 12/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbNumber: UILabel!
    
    var number = 0
    
    @IBOutlet weak var btSubsome: UIButton!
    
    @IBOutlet weak var vwTen: UIView!
    
    @IBOutlet weak var btAddsome: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if number < 1{
            
            btSubsome.isHidden = true
            
        }
        
    }


    @IBAction func btADD(_ sender: Any) {
        number = number + 1
        lbNumber.text = "\(number)"
        
        if number > 0 {
            
            btSubsome.isHidden = false
            
        }
        
        if number == 10{
            
            vwTen.isHidden = false
            btSubsome.isHidden = true
            btAddsome.isHidden = true
            
        }
    }
    
    
    @IBAction func btSUB(_ sender: Any) {
        number = number - 1
        lbNumber.text = "\(number)"
        
        if number < 1 {
            
            btSubsome.isHidden = true
            
        }
    }
    
   
        @IBAction func btClosevwTen(_ sender: Any) {
        
        vwTen.isHidden = true
        btAddsome.isHidden = false
        btSubsome.isHidden = false
        
    }
}

