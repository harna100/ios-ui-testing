//
//  ViewController.swift
//  UI Testing
//
//  Created by Paul on 11/7/17.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isHidden:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchIn_butt(_ sender: Any) {
        self.splitViewController?.preferredDisplayMode = !isHidden ? .primaryHidden : .allVisible
        isHidden = !isHidden
    }
    
}

