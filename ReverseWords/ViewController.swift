//
//  ViewController.swift
//  ReverseWords
//
//  Created by Konstantyn Koroban on 09/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var highLbl: UILabel!
    @IBOutlet weak var topLbl: UILabel!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var enterText: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tapButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapButton.layer.cornerRadius = 20
    }
    
    @IBAction func tapButton(_ sender: Any) {
        let text: String = enterText.text!
        textView.text = String(text.reversed())
        
    }
    
}

