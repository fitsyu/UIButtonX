//
//  ViewController.swift
//  UIButtonX
//
//  Created by fitsyu on 06/13/2019.
//  Copyright (c) 2019 fitsyu. All rights reserved.
//

import UIKit
import UIButtonX

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillWithSixButtonX()
    }
    
    @IBAction func fillWithSixButtonX() {
        
        let numbers = [ "one", "two" , "three" , "four" , "five", "six"]
        
        for i in numbers {
            
            let buttonX = UIButtonX()
            buttonX.setTitle("button x: \(i)", for: .normal)
            buttonX.addTarget(self, action: #selector(touched), for: .touchUpInside)
            buttonX.addTarget(self, action: #selector(handleDismissal), for: .dismissed)
            
            stackView.addArrangedSubview(buttonX)
        }
    }
    
    @objc func touched(_ sender: UIButton) {
        let title = sender.currentTitle ?? ""
        
        textView.text.append("\n")
        textView.text.append("touched \(title)")
    }
    
    @objc func handleDismissal(_ sender: UIButton) {
        let title = sender.currentTitle ?? ""
        textView.text.append("\n")
        textView.text.append("dismiss buttonX \(title)")
    }
}

