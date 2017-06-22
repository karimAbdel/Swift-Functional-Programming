//
//  UserStore.swift
//  VaporApp
//
//  Created by User on 2017-06-22.
//
//

import Foundation

import Vapor


final class UserStore {
    
    static let sharedInstance = UserStore()
    fileprivate var list: [UserModel] = Array<UserModel>()
    private init() {
    }
    
    
    public func addInitialUsers(){
        
        let user1 = UserModel(userId: 1, username: "Alain", password: "1234")
        
        list.append(user1)
        
        let user2 = UserModel(userId: 2, username: "Steeve", password: "5678")
        list.append(user2)
        
        let user3 = UserModel(userId: 3, username: "Jane", password: "9234")
        list.append(user3)
        
        
        
    }
    
    
    
    
        func listUsers() -> [UserModel] {
        return self.list
    }
    
    
    
    
}

