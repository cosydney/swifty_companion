//
//  TableViewCell.swift
//  Swifty_companion
//
//  Created by Sydney Cohen on 16/06/2018.
//  Copyright © 2018 Sydney Cohen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var dataImage: (String)? {
        didSet {
            let queue = DispatchQueue.global(qos: DispatchQoS.userInitiated.qosClass);
            
            UIApplication.shared.isNetworkActivityIndicatorVisible = true;
            activityIndicator.hidesWhenStopped = true;
            activityIndicator.startAnimating();
            
            queue.async{
                if let url = URL(string: self.dataImage!) {
                    do {
                        let data = try Data(contentsOf: url);
                        let image: UIImage = UIImage(data: data)!;
                        
                        DispatchQueue.main.async {
                            self.profileImage?.image = image;
                            self.profileImage?.contentMode = .scaleAspectFill;
                            self.profileImage?.clipsToBounds = true;
                        }
                    } catch {
                        DispatchQueue.main.async {
                            self.profileImage?.backgroundColor = UIColor.lightGray;
                            if (self.window?.rootViewController?.presentedViewController == nil) {
                                let alert = UIAlertController(
                                    title: "Error",
                                    message: "Cannot access \(self.dataImage!)",
                                    preferredStyle: UIAlertControllerStyle.alert
                                );
                                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                                self.window?.rootViewController?.present(alert, animated: true, completion: nil);
                            }
                        }
                    }
                }
                DispatchQueue.main.async {
                    self.activityIndicator.stopAnimating();
                }
            }
        }
    }
    
}
