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
        if let text: String = enterText.text, enterText.text != "" && textView.text == "" {
            tapButton.setTitle("Сlear", for: .normal)
            textView.text = String(text.reversed())
        } else if enterText.text  !=  "" && textView.text != "" {
            tapButton.setTitle("Reverse", for: .normal)
            clearDataView()
        }
    }
    
    private func clearDataView() {
        self.enterText.text = nil
        self.textView.text = nil
    }
}
