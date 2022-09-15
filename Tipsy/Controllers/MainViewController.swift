//
//  MainViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIStackView!
    @IBOutlet weak var tenPctButton: UIStackView!
    @IBOutlet weak var twentyPctButton: UIStackView!
    @IBOutlet weak var splitNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        print(sender)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

