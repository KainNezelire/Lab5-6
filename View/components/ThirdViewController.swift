//
//  ThirdViewController.swift
//  View
//
//  Created by Kair on 03.04.2024.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayDetailedInformation()
    }
    
    func displayDetailedInformation() {
        detailLabel.text = "This is the detailed information screen.\n\nYou can display any detailed information here, such as user profiles, product details, etc."
    }
    
    @IBAction func detailButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Detail Button Tapped", message: "You tapped the detail button!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
