//
//  ViewController.swift
//  TimesTable
//
//  Created by Charles Martin Reed on 9/12/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK:- IBActions
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var timesTable: UITableView!
    
    // MARK:- Properties
    //var timesTableBase: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //starting with a default value
        //timesTableBase = Int(slider.value)
    }
    
    // MARK:- Table view protocol methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //exercise is to return the first 20 members of the times table
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //figure out what to display in the cell
        let timesTableValue = Int(slider.value) * (indexPath.row + 1)
        cell.textLabel?.text = "\(Int(slider.value)) * \(indexPath.row + 1) = \(timesTableValue)"
        return cell
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        //convert the slider value to an int
        let sliderInt = Int(slider.value)
        
        //convert the slider value to a String for updating the label
        label.text = "Times table for: \(String(sliderInt))"
        
        //reload the timesTable once the slider value changes
        timesTable.reloadData()
        
        
    }
    
}

