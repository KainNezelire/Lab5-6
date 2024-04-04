//
//  FourthViewController.swift
//  View
//
//  Created by Kair on 03.04.2024.
//

import Foundation
import UIKit

// Определение протокола для делегата
protocol FourthViewControllerDelegate: AnyObject {
    func clearData()
}

class FourthViewController: UIViewController {
    @IBOutlet weak var taskButton: UIButton!
    
    // Свойство делегата
    weak var delegate: FourthViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTaskFunctionality()
    }
    
    func setupTaskFunctionality() {
        taskButton.setTitle("Perform Task", for: .normal)
    }
    
    @IBAction func taskButtonTapped(_ sender: UIButton) {

        delegate?.clearData()
        
    }
    
    


}
