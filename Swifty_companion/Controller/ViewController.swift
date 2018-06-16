//
//  ViewController.swift
//  Swifty_companion
//
//  Created by Sydney Cohen on 15/06/2018.
//  Copyright © 2018 Sydney Cohen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBAction func searchButton(_ sender: Any) {
        print("searching")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "triangles.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

