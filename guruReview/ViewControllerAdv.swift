//
//  ViewControllerAdv.swift
//  guruReview
//
//  Created by IFBIOTIC24 on 19/05/23.
//

import UIKit

class ViewControllerAdv: UIViewController {
    let resposta = Int.random(in: 1...100)
    var contador = 0
    @IBOutlet weak var Dica: UILabel!
    @IBOutlet weak var labelContador: UILabel!
    @IBOutlet weak var Input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Novo(_ sender: Any) {
        
       
    }

     @IBAction func Enviar(_ sender: Any) {
         if let palpite = Int(Input.text!){
             if palpite < resposta {
                 Dica.text = "Tente um número maior!"
             } else if palpite > resposta {
                 Dica.text = "Tente um número menor!"
             } else if palpite == resposta {
                 Dica.text = "Parabéns"
             }
         }
         contador+=1
         labelContador.text = String(contador)
         
     }


}
