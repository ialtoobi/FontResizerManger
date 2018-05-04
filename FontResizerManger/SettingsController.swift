//
//  Settings.swift
//  FontResize
//
//  Created by Mohammed Altoobi on 5/4/18.
//  Copyright © 2018 Mohammed Altoobi. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {

    
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var postStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set label
        self.postLabel.text = "Font Size: \(Double((CGFloat(SettingsManager.shared.fontSize))))"
        
        
        fontSize()
        postStepper.minimumValue = 16
        postStepper.maximumValue = 30
        postStepper.value = Double((Int(SettingsManager.shared.fontSize)))

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        postLabel.font = UIFont(name: "Arial", size: (CGFloat(SettingsManager.shared.fontSize)))
       
    }
    
    @IBAction func postLabelChanged(_ sender: UIStepper) {

        self.postLabel.text = "Font Size: \(CGFloat(sender.value))"
        self.postLabel.font = UIFont(name: "Arial", size: CGFloat(sender.value))
        
        SettingsManager.shared.fontSize = Float(CGFloat(sender.value))
        
        // set value to settings manager
        SettingsManager.shared.fontSizeInt = Int(sender.value)
        
    }
    
    fileprivate func fontSize(){
        
        // read value from settings manager
        let fontSize = Float(SettingsManager.shared.fontSize)
        
        // set label
        self.postLabel.font = UIFont(name: "Arial", size: CGFloat(fontSize))
        
        
    }
    
    

}
