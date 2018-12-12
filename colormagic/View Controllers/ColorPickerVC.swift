//
//  ColorPickerVC.swift
//  colormagic
//
//  Created by Owen Henley on 12/11/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController{
    
    weak var colorDelegate: ColorPickerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorButtonTapped(_ sender: UIButton) {
        guard let color = sender.backgroundColor, let name = sender.titleLabel?.text else { return }
        colorDelegate?.colorSelected(color: color, withName: name)
        self.navigationController?.popViewController(animated: true)
    }

}
