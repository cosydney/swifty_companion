//
//  LoginViewController.swift
//  Swifty_companion
//
//  Created by Sydney Cohen on 16/06/2018.
//  Copyright © 2018 Sydney Cohen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "triangles.jpg")!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
