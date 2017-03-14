//
//  ViewController.swift
//  PickerLooper
//
//  Created by Kittitat Rodphotong on 3/14/2560 BE.
//  Copyright © 2560 FameSprinter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var pickerView: UIPickerView!
    
    // MAKR: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "TEST"
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        
    }
}
