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
    
    // MARK: - Variable
    var datas = [Int]()
    
    // MAKR: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...99 {
            datas.append(index)
        }
        
        print("COUNT: \(datas.count)")
        pickerView.selectRow((1000/2), inComponent: 0, animated: false)
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return 1000
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(datas[row%100])
    }
}
