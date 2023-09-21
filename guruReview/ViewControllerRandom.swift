//
//  ViewControllerRandom.swift
//  guruReview
//
//  Created by IFBIOTIC24 on 19/05/23.
//

import UIKit

class ViewControllerRandom: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var Lresponda: UILabel!
    @IBAction func btnEnviar(_ sender: Any) {
        if let num1 = Int(input1.text!){
            if let num2 = Int(input2.text!){
                let numero = Int.random(in: num1...num2)
                Lresponda.text = String(numero)
            }
        }else{
            print("falhou")
        }
        
      
        
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
