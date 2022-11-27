//
//  RateViewController.swift
//  RandomAnimalApp
//
//  Created by TEO on 26/11/22.
//

import UIKit

class RateViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rateTextField: UITextField!
    
    var isHidden = true
    
    @IBAction func onRateButtonPressed(_ sender: UIButton) {
        rateAnimal()
        messageLabel.isHidden = isHidden
    }
    
    private func rateAnimal(){
        let value = rateTextField.text ?? ""
        guard let rate = Int(value) else {
            messageLabel.text = "No es una calificación númerica"
            isHidden = false
            return
        }
        
        if rate >= 1, rate <= 5 {
            dismiss(animated: true)
            isHidden = true
        }else{
            isHidden = false
        }
        messageLabel.text = "Calificación no válida"
    }
    
}
