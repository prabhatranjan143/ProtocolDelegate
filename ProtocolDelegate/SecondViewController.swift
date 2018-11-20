//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by Prabhat on 20/11/18.
//  Copyright © 2018 Prabhat. All rights reserved.
//

import UIKit
// Step 1
// Create a protocol with funtion name define
protocol InputMessage {
    func delegatedMessage(message:String)
}
class SecondViewController: UIViewController {

    // Step 2
    // Create a variable of delegate to pass values to delegates
    var delegate:InputMessage?
    @IBOutlet weak var inputText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func submitClick(_ sender: Any) {
            	        
        // Step 3
        // Assign value to protocol methods using delegates
        if let delegatedMessage = inputText.text{
             delegate?.delegatedMessage(message: delegatedMessage)
        }else{
             delegate?.delegatedMessage(message: "")
        }
      
        self.dismiss(animated: true, completion: nil)
    }
}
