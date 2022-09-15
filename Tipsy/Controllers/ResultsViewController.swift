//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Mani-Jafari on 2022-09-15.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalPerPerson: String?
    var settings: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalPerPerson
        settingsLabel.text = settings
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
