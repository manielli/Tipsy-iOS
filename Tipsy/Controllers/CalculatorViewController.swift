//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var totalPerPerson: Float?
    var settings: String?

    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        billTotalTextField.endEditing(true)
        if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if sender.currentTitle == "10%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        } else if sender.currentTitle == "20%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        }
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTotalTextField.endEditing(true)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let splitNumber = Float(splitNumberLabel.text ?? "0")
        let totalBill = Float(billTotalTextField.text ?? "2")
        if zeroPctButton.isSelected == true {
            totalPerPerson = Float(totalBill!)/Float(splitNumber!)
            settings = "Split between \(splitNumberLabel.text ?? "") people, with 0% tip."
        } else if tenPctButton.isSelected == true {
            totalPerPerson = Float(totalBill! * 1.1)/Float(splitNumber!)
            settings = "Split between \(splitNumberLabel.text ?? "") people, with 10% tip."
        } else if twentyPctButton.isSelected == true {
            totalPerPerson = Float(totalBill! * 1.2)/Float(splitNumber!)
            settings = "Split between \(splitNumberLabel.text ?? "") people, with 20% tip."
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalPerPerson = String(format: "%.2f", totalPerPerson ?? 0)
            destinationVC.settings = settings
        }
    }
}

