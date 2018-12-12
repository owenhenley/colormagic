//
//  ColorPickerDelegate.swift
//  colormagic
//
//  Created by Owen Henley on 12/11/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func colorSelected(color: UIColor, withName name: String)
}
