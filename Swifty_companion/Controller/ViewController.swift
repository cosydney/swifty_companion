//
//  ViewController.swift
//  Swifty_companion
//
//  Created by Sydney Cohen on 15/06/2018.
//  Copyright © 2018 Sydney Cohen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var UID : String = "730ef4263e45f77a5d91f469b9716ee036ce7eeb917c8b848e1c95eace5d25ad"
    var SECRET : String = "45a66fa98d9a0a895797679b35eeeb7c9bef033fe3ce4f0e99bd3766c1fd1ed7"
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

