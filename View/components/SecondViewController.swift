//
//  SecondViewController.swift
//  View
//
//  Created by Kair on 03.04.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    var delegete: VCDelegate!
    
    var userName = ""
    
    override func viewDidLoad(){
        super.viewDidLoad()
        textLabel.text = userName
    }
    
    @IBAction func saveText(_ sender: Any){
        delegete.setTitle(title: textField.text ?? "")
        
        dismiss(animated: true)
    }
}
