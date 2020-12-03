//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by Pawan  on 15/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewControllerB
        vc?.delegate = self
    }

    @IBAction func NextGo(_ sender: Any) {
        performSegue(withIdentifier: "goto", sender: self)
    }
    
}
extension ViewController: PrintSomeThings {
    func hello(message: String) {
            lblName.text = message
    }
}
