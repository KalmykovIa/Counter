//
//  ViewController.swift
//  Counter
//
//  Created by Ярослав Калмыков on 16.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var counter = 0
    
    @IBAction func counterIncrease(_ sender: Any) {
        counter += 1
        text.text = "Значение счетчика: \(counter)"
    }
    @IBOutlet weak var buttonIncrease: UIButton!
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

