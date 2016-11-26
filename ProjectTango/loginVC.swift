//
//  LoginVC.swift
//  ProjectTango
//
//  Created by Neal Soni on 11/25/16.
//  Copyright © 2016 Yale People. All rights reserved.
//

import UIKit
import Alamofire
import Firebase

class LoginVC: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {
    
    @IBOutlet var pageVCIndicator: UIPageControl!
    
    @IBOutlet var pageVCHolder: UIView!
    
    override func viewDidLoad() {
        //self.view.backgroundColor = UIColor(red:0.17, green:0.28, blue:0.89, alpha:1.0)
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().signInSilently()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Sign in delegate functions
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        if error == nil {
            let authentication = user.authentication
            let idToken = authentication?.idToken
            let credential = FIRGoogleAuthProvider.credential(withIDToken: (authentication?.idToken)!,
                                                              accessToken: (authentication?.accessToken)!)
            FIRAuth.auth()?.signIn(with: credential) { (user, error) in
                //Successfully completed Google auth process
                if user != nil{
                    print("login w/ email: \(user!.email!) and name: \(user!.displayName!)")
                    if idToken != nil {
                        UserManager.createUser(withName: user!.displayName!, email: user!.email!, token: idToken!)
                        
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
            
        } else {
            print("\(error.localizedDescription)")
        }
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        //User disconnected
    }
}
