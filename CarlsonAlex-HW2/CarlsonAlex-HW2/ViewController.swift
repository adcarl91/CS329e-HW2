//  Project: CarlsonAlex-HW2
//  EID: adc4459
//  Course: CS329E
//  ViewController.swift
//  CarlsonAlex-HW2
//
//  Created by Carlson, Alexander D on 9/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var status: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if (userID.hasText == true) && (password.hasText == true){
            status.text = userID.text! + " logged in"
        }
        else {
            status.text = "Invalid login"
        }
    }
    
    // code to enable tapping on the background to remove software keyboard
        
    func textFieldShouldReturn(textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}

