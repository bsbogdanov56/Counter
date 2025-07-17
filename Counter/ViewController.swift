//
//  ViewController.swift
//  Counter
//
//  Created by Богдан on 17.07.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonCounter: UIButton!
    @IBOutlet weak var labelCounter: UILabel!
    
    private var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelCounter.text = "Значение счётчика: \(num)"
    }
    @IBAction func buttonTouch(_ sender: Any) {
        num += 1
        labelCounter.text = "Значение счётчика: \(num)"

    }
    
    


}

