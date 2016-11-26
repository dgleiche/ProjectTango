//
//  UserManager.swift
//  ProjectTango
//
//  Created by Dylan on 11/26/16.
//  Copyright © 2016 Yale People. All rights reserved.
//

import Foundation

class UserManager: NSObject {
    static var sharedInstance: UserManager?
    
    let currentUser: User
    let token: String
    
    private init(withName name: String, email: String, token: String) {
        self.currentUser = User(withName: name, email: email)
        self.token = token
        
        super.init()
    }
    
    class func createUser(withName name: String, email: String, token: String) {
        self.sharedInstance = UserManager(withName: name, email: email, token: token)
    }
    
    class func destroy() {
        self.sharedInstance = nil
    }
    
}
