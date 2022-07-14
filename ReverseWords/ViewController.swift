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
        tapButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        if enterText.text != "" && textView.text == nil {
                textView.text = reverseStringBrain.reverseString(input: textView.text)
                tapButton.setTitle(ReverseStringBrain.Constants.clear, for: .normal)
            } else if enterText.text != "" {
                enterText.text = ""
                textView.text = nil
                tapButton.setTitle(ReverseStringBrain.Constants.reverse, for: .normal)
                tapButton.alpha = 0.5
            }
        }
            
        }
//        let text: String = enterText.text!
//            textView.text = String(text.reversed())
//            tapButton.setTitle("Reverse", for: .normal)
//            tapButton.setTitle("Clear", fo

