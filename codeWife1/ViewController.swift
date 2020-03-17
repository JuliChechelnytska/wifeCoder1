//
//  ViewController.swift
//  codeWife1
//
//  Created by Julia on 19.02.2020.
//  Copyright © 2020 Julia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startText: UITextField!
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var endText: UITextView!

    @IBAction func buttonOnTap(_ sender: Any) {
        let array = startText.text!.components(separatedBy: " ").compactMap { Int($0) }
        let a = array[0]
        let b = array[1]
        
        endText.text = "\(a)<\(b)=\(a < b)\n"
                     + "\(a)>\(b)=\(a > b)\n"
                     + "\(a)<=\(b)=\(a <= b)\n"
                     + "\(a)>=\(b)=\(a >= b)\n"
                     + "\(a)==\(b)=\(a == b)\n"
                     + "\(a)!=\(b)=\(a != b)\n"
    }
}
