//
//  networkManager.swift
//  ProjectTango
//
//  Created by Neal Soni on 11/26/16.
//  Copyright © 2016 Yale People. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class networkManager: NSObject{
    let baseURL = "http://www.yale.edu/tp/cas"
    var alamofireManager : Alamofire.SessionManager?
    
    override init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 15 // seconds
        configuration.httpMaximumConnectionsPerHost = 7
        self.alamofireManager = Alamofire.SessionManager(configuration: configuration)
    }
    

    
    
}
