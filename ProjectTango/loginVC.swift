//
//  loginVC.swift
//  ProjectTango
//
//  Created by Neal Soni on 11/25/16.
//  Copyright © 2016 Yale People. All rights reserved.
//

import UIKit
import Alamofire


class loginVC: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate, UIPageViewControllerDataSource, UIPageViewControllerDelegate  {
    
    @IBOutlet var pageVCIndicator: UIPageControl!
    
    @IBOutlet var signInButton: GIDSignInButton!
    
    @IBOutlet var pageVCHolder: UIView!
    
    override func viewDidLoad() {
        //self.view.backgroundColor = UIColor(red:0.17, green:0.28, blue:0.89, alpha:1.0)
       

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
