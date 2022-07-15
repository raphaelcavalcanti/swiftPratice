//
//  ViewController.swift
//  appIMC
//
//  Created by ICMMAC05-7528 on 15/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var otImage1: UIImageView!
    
    @IBOutlet weak var lbTotal: UILabel!
    
    @IBOutlet weak var vwPeso: UITextField!
    @IBOutlet weak var vwAltura: UITextField!
    
    var pesoValor = 0.0
    var alturaValor = 0.0
    var varImc = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func btNetximage(_ sender: UIButton) {
        
        pesoValor = Double(vwPeso.text!) ?? 0.0
        alturaValor = Double(vwAltura.text!) ?? 0.0
        print(pesoValor)
        print(alturaValor)
        varImc = (pesoValor/(alturaValor*alturaValor))
        
        if varImc < 25.0{
            otImage1.image = UIImage(named: "thumbsUp")
            otImage1.isHidden = false
            lbTotal.text = "\(varImc)"
            lbTotal.isHidden = false
            
        }else{
            otImage1.image = UIImage(named: "thumbsDown")
            otImage1.isHidden = false
            lbTotal.text = "\(varImc)"
            lbTotal.isHidden = false
           
        }
        view.endEditing(true)
    }
}
