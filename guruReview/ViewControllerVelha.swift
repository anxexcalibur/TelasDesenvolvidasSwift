//
//  ViewControllerVelha.swift
//  guruReview
//
//  Created by IFBIOTIC24 on 22/05/23.
//

import UIKit

class ViewControllerVelha: UIViewController {
    //primeira linha
    @IBOutlet weak var label00: UILabel!
    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    // segunda linha
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label11: UILabel!
    // terceira linha
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var label22: UILabel!
    @IBOutlet weak var label21: UILabel!
    //Inputs
    @IBOutlet weak var inpValor: UITextField!
    @IBOutlet weak var inpLinha: UITextField!
    @IBOutlet weak var inpColuna: UITextField!
    override func viewDidLoad() {
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var matriz = [["-","-","-"],["-","-","-"],["-","-","-"]]
    @IBAction func btnEnviar(_ sender: Any) {
        
        if let valor = inpValor.text,let linha = Int(inpLinha.text!),
               let coluna = Int(inpColuna.text!),
               linha >= 0 && linha < matriz.count,
               coluna >= 0 && coluna < matriz[linha].count {
                    matriz[linha][coluna] = valor
            let labels = [
                    [label00, label01, label02],
                    [label10, label11, label12],
                    [label20, label21, label22]
                ]

                for i in 0..<matriz.count {
                    for j in 0..<matriz[i].count {
                        if let label = labels[i][j] {
                                    label.text = matriz[i][j]
                                }
                    }
                }
            }
        
    }
    
    

}
