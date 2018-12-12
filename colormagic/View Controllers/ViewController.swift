//
//  ViewController.swift
//  colormagic
//
//  Created by Owen Henley on 12/11/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {
    
    @IBOutlet weak var colorNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func colorSelected(color: UIColor, withName name: String) {
        view.backgroundColor = color
        colorNameLabel.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorPicker" {
            guard let destination = segue.destination as? ColorPickerVC else { return }
            destination.colorDelegate = self
        }
    }
}

