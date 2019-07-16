//
//  ViewController.swift
//  Swift_ActionSheetDemo
//
//  Created by Apple on 22/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        let Alert=UIAlertController.init(title: "Alert", message: "This is Sample Alert!!!", preferredStyle: .alert)
        
        let cancelBtn = UIAlertAction.init(title: "Cancel", style: .default) { (Action) in
            print("Cancel Clicked.")
        }
        let OKBtn=UIAlertAction.init(title: "OK", style: .default) { (Action) in
            print("OK button Clicked.")
        }
        let OneBtn=UIAlertAction.init(title: "ONE", style: .default) { (action) in
            print("One button Clicked.")
        }
        let TwoBtn=UIAlertAction.init(title: "TWO", style: .default) { (Action) in
            print("Two button Clicked.")
        }
        
        Alert.addAction(OneBtn)
        Alert.addAction(TwoBtn)
        Alert.addAction(OKBtn)
        Alert.addAction(cancelBtn)

        present(Alert, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
    let ActionSheet=UIAlertController.init(title: "ActionSheet", message: "This is ActionSheet", preferredStyle: .actionSheet)
        
        let Cancelbtn=UIAlertAction.init(title: "Cancel", style: .default) { (action) in
            self.cancelbtn()
        }
        let OKBtn=UIAlertAction.init(title: "OK", style: .default) { (Action) in
            print("OK button Clicked.")
        }
        let OneBtn=UIAlertAction.init(title: "ONE", style: .default) { (action) in
            print("One button Clicked.")
        }
        let TwoBtn=UIAlertAction.init(title: "TWO", style: .default) { (Action) in
            print("Two button Clicked.")
        }
        ActionSheet.addAction(OneBtn)
        ActionSheet.addAction(TwoBtn)
        ActionSheet.addAction(OKBtn)
        ActionSheet.addAction(Cancelbtn)
        
        present(ActionSheet, animated: true, completion: nil)

        
    }
    
    
    
    @objc func cancelbtn() {
        print("Cancel Btn Clicked")
    }
}

