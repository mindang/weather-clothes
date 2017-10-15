//
//  ViewController.swift
//  HH
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userCheck: UIButton!
    @IBOutlet var userNameInput: UITextField!
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var userViewHidden: UIView!
    @IBOutlet var nextView: UIView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    let username: String = "김민재"
    
    @IBAction func nameDisplay(_ sender: Any) {
        if userNameInput.text == username{
            userViewHidden.isHidden = false
            nextView.isHidden = false
            userLabel.text = "환영합니다. " + userNameInput.text! + "님"
        }
        else {
            userViewHidden.isHidden = false
            nextView.isHidden = true
            userLabel.text = "죄송합니다. 사용자의 이름이 일치하지않습니다. "
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userViewHidden.isHidden = true
        nextView.isHidden = true
    }


}

