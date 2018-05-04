//
//  ViewController.swift
//  FontResize
//
//  Created by Mohammed Altoobi on 5/4/18.
//  Copyright © 2018 Mohammed Altoobi. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet var postLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postLabel.text = " Hello World!!"

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.loadSettings()
    }
    
    private func loadSettings(){
        postLabel.font = UIFont(name: "Arial", size: (CGFloat(SettingsManager.shared.fontSize)))
    }
    
}

