//
//  ViewControllerGuru.swift
//  guruReview
//
//  Created by IFBIOTIC24 on 19/05/23.
//

import UIKit

class ViewControllerGuru: UIViewController {
        
    @IBOutlet weak var LResposta: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let res = ["sim","talvez","nao"]
    @IBAction func verificar(_ sender: Any) {
        LResposta.text = res.randomElement()
    }
    
    @IBAction func btLimpar(_ sender: Any) {
        LResposta.text = "--"
    }
     
}
