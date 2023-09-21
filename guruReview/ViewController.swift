//
//  ViewController.swift
//  guruReview
//
//  Created by IFBIOTIC24 on 19/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btGuru(_ sender: Any) {
        performSegue(withIdentifier: "toGuru", sender: self)
    }
    
    @IBAction func btRandom(_ sender: Any) {
        performSegue(withIdentifier: "toRandom", sender: self)
    }
    
    @IBAction func btAdivinhe(_ sender: Any) {
        performSegue(withIdentifier: "toADV", sender: self)
    }
    
    @IBAction func btnVelha(_ sender: Any) {
        performSegue(withIdentifier:"ShowVelha",sender: self)
    }
}

