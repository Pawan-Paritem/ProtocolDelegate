//
//  ViewControllerB.swift
//  ProtocolDemo
//
//  Created by Pawan  on 15/10/2020.
//

import UIKit

protocol PrintSomeThings: AnyObject {
    func hello (message : String)
}

class ViewControllerB: UIViewController {
    
    //Object
    weak var delegate: PrintSomeThings?
    @IBOutlet weak var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ButtonB(_ sender: Any) {
        guard let text = txt.text else { return }
        
        delegate?.hello(message: text)
        self.dismiss(animated: false)
    }
}
