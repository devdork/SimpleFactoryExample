//
//  ViewController.swift
//  SimpleFactoryExample
//
//  Created by devdork on 2018/10/18.
//  Copyright © 2018 devdork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBAction func didChangeEnvType(_ sender: UISegmentedControl) {
        
        let factory = EnvironmentFactory()
        var env:Environment?
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("DEV")
            env = factory.create(.dev)
         
        default:
            print("PROD")
            env = factory.create(.prod)
            
        }
        
        segControl.tintColor = env?.tint
        segControl.backgroundColor = env?.background
        view.backgroundColor = env?.background
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segControl.setTitle("DEV", forSegmentAt: 0)
        segControl.setTitle("PROD", forSegmentAt: 1)
        
        let factory = EnvironmentFactory()
        let dev = factory.create(.dev)
        
        segControl.tintColor = dev.tint
        segControl.backgroundColor = dev.background
        view.backgroundColor = dev.background
        
    }


}

