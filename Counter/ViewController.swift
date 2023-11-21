//
//  ViewController.swift
//  Counter
//
//  Created by Ярослав Калмыков on 16.11.2023.
//

import UIKit

class ViewController: UIViewController {
    private var counter = 0
    @IBOutlet private weak var scrollView: UIScrollView!
    
    @IBOutlet private weak var textView: UITextView!
    
    @IBAction private func counterIncrease(_ sender: Any) {
        counter += 1
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = Date()
        let formattedDate = dateFormatter.string(from: currentDate)
        textView.text += "\(formattedDate): Значение счётчика: \(counter)\n"
        let range = NSMakeRange(textView.text.count - 1, 1)
        textView.scrollRangeToVisible(range)
    }
    @IBOutlet private weak var buttonIncrease: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isEditable = false
        textView.isScrollEnabled = true
        scrollView.addSubview(textView)
        view.addSubview(scrollView)
        
    }
}

