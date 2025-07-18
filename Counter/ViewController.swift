//
//  ViewController.swift
//  Counter
//
//  Created by Богдан on 17.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var eraserButton: UIButton!
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var historyChange: UITextView!
    
    private var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounter.text = "Значение счётчика: \(num)"
    }
    private func addToHistory(_ message: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let timestamp = dateFormatter.string(from: Date())
        let historyEntry = "\n[\(timestamp)]: \(message)\n"
        historyChange.text.append(historyEntry)
    }
    
    @IBAction func eraserTouch(_ sender: Any) {
        num = 0
        addToHistory("значение сброшено")
        viewDidLoad()
    }
    
    @IBAction func plusTouch(_ sender: Any) {
        num += 1
        addToHistory("значение изменено на +1")
        viewDidLoad()
    }
    
    @IBAction func minusTouch(_ sender: Any) {
        if num > 0 {
            num -= 1
            addToHistory("значение изменено на -1")
        } else {
            addToHistory("попытка уменьшить значение счётчика ниже 0")
        }
        viewDidLoad()
    }
}
        


