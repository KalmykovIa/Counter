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
        text.text = "\(counter)"
    }
    
    @IBAction func counterZero(_ sender: Any) {
        counter = 0
        text.text = "\(counter)"
    }
    
    @IBAction func counterDecrease(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            text.text = "\(counter)"
        } else {
            text.text = "В минус не уйдем"
        }
    }
    
    
    @IBOutlet weak var buttonIncrease: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonDecrease: UIButton!
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

