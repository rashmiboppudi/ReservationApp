//
//  CustomNavigationController.swift
//  Reservation
//
//  Created by Rashmi on 3/14/19.
//  Copyright © 2019 Rash. All rights reserved.
//

import Foundation
import UIKit

class CustomNavigationController: UINavigationController, UIViewControllerTransitioningDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This will make the Status bar have white font through out the app
        self.navigationBar.barStyle = UIBarStyle.black
    }
}
