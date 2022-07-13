//
//  ViewController.swift
//  aprovadoOunao
//
//  Created by ICMMAC05-7528 on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gradePrimeira: UITextField!
    @IBOutlet weak var gradeTwo: UITextField!
    @IBOutlet weak var gradeThree: UITextField!
    @IBOutlet weak var gradeFour: UITextField!
    @IBOutlet weak var lbNota: UILabel!
    @IBOutlet weak var vwNota: UIView!
    @IBOutlet weak var lbaprovReprov: UILabel!
    @IBOutlet weak var vwaprovReprov: UIView!
    
    var grade1 = 0.0
    var grade2 = 0.0
    var grade3 = 0.0
    var grade4 = 0.0
    var totalMedia = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btMedia(_ sender: Any) {
        grade1 = Double(gradePrimeira.text!) ?? 0.0
        grade2 = Double(gradeTwo.text!) ?? 0.0
        grade3 = Double(gradeThree.text!) ?? 0.0
        grade4 = Double(gradeFour.text!) ?? 0.0
        
        totalMedia = ((grade1+grade2+grade3+grade4)/4)
        
        if totalMedia < 7.0{
            vwaprovReprov.backgroundColor = .red
            lbaprovReprov.text = "REPROVADO!!"
            vwaprovReprov.isHidden = false
            vwNota.isHidden = false
            lbNota.text = "\(totalMedia)"
        }else{
            vwaprovReprov.backgroundColor = .green
            lbaprovReprov.text = "APROVADO!!"
            vwaprovReprov.isHidden = false
            vwNota.isHidden = false
            lbNota.text = "\(totalMedia)"
        }
    }
    
}

