//
//  ViewController.swift
//  PassingDataNotification
//
//  Created by Son on 8/21/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cityChosenLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Lisener
        NotificationCenter.default.addObserver(self, selector: #selector(setToPeru(notification:)), name: .peru, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(setToArgentina(notfication:)), name: .argentina, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func setToPeru(notification: NSNotification) {
        
//        cityChosenLabel.text = notification.object as? String
        cityChosenLabel.text = "Peru"
    }
    @objc func setToArgentina(notfication: NSNotification) {
//        cityChosenLabel.text =  String(describing: notfication.object!)
        cityChosenLabel.text = "Aghentina"
    }

}

