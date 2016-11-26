//
//  HomeVC.swift
//  ProjectTango
//
//  Created by Dylan on 11/26/16.
//  Copyright © 2016 Yale People. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userManager = UserManager.sharedInstance {
            print(userManager.currentUser.name)
        } else {
            let loginPage = self.storyboard?.instantiateViewController(withIdentifier: "loginVC") as! LoginVC
            self.tabBarController?.present(loginPage, animated: true, completion: nil)
        }
    }
    
}
