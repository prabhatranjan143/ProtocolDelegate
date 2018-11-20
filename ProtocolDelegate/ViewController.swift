//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by Prabhat on 20/11/18.
//  Copyright © 2018 Prabhat. All rights reserved.
//

import UIKit

class ViewController: UIViewController , InputMessage{
    // Step 4
    // This is implementation of delegate method
    func delegatedMessage(message: String) {
        returnMessage.text = message
    }
    
    @IBOutlet weak var returnMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func clickMe(_ sender: Any) {
        
        performSegue(withIdentifier: "SecondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // step 5
        // Set the delegate property of SecondViewController
        // to current controller
        let desVC = segue.destination as! SecondViewController
        desVC.delegate = self
    }

}

