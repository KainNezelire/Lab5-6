//
//  ViewController.swift
//  View
//
//  Created by Kair on 03.04.2024.
//

import UIKit

protocol VCDelegate{
    func setTitle(title: String)
}

class ViewController: UIViewController {
        @IBOutlet weak var textLabel: UILabel!
        let userName = "Kair";
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "show", let vc = segue.destination as? SecondViewController{
                vc.userName = userName
                vc.delegete = self
            }
        }
        
        @IBAction func nextVC(_ sender: Any){
            performSegue(withIdentifier: "show", sender: self)
        }
}

extension ViewController: VCDelegate{
    func setTitle(title: String){
        textLabel.text = title
    }
}

extension ViewController: FourthViewControllerDelegate {
    func clearData() {
        textLabel.text = ""
    }
}
