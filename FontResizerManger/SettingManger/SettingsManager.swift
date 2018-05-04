//
//  SettingsManager.swift
//  FontResize
//
//  Created by Mohammed Altoobi on 5/4/18.
//  Copyright © 2018 Mohammed Altoobi. All rights reserved.


import Foundation

class SettingsManager{
    
    // setup instance
    class var shared: SettingsManager {
        struct Static {
            static let instance: SettingsManager = SettingsManager()
        }
        return Static.instance
    }
    
    // Create default
    private var defaultStorage = UserDefaults.standard

    
    //font size
    var fontSizeInt: Int {
        get{
            if defaultStorage.object(forKey: "fontSizeInt") != nil {
                let returnValue = defaultStorage.object(forKey: "fontSizeInt") as! Int
                return returnValue
            }else{
                return 16   // default value
            }
        }set{
            defaultStorage.set(newValue, forKey: "fontSizeInt")
        }
    }
    
    var fontSize: Float {
        get{
            if defaultStorage.object(forKey: "fontSize") != nil {
                let returnValue = defaultStorage.object(forKey: "fontSize") as! Float
                return returnValue
            }else{
                return 16
            }
        }set{
            defaultStorage.set( newValue, forKey: "fontSize")
        }
    }
    
}

