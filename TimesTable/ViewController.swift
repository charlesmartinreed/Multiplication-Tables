//
//  ViewController.swift
//  TimesTable
//
//  Created by Charles Martin Reed on 9/12/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK:- IBActions
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    // MARK:- Properties
    var timesTableBase: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //starting with a default value
        timesTableBase = 5
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        //convert the slider value to an int
        var sliderInt = Int(slider.value)
        
        //convert the slider value to a String for updating the label
        label.text = "Times table for: \(String(sliderInt))"
        
    }
    
}

