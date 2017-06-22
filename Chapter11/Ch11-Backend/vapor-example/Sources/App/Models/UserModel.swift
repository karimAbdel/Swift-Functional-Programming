//
//  UserModel.swift
//  VaporApp
//
//  Created by User on 2017-06-22.
//
//

import Foundation


import Vapor

import Fluent


final class UserModel: Model {
    /**
     The entity's primary identifier.
     This is the same value used for
     `find(:_)`.
     */
    public var id: Node?

    
    
    var userId:Int
    var username: String
    var password: String
    
    
    
    init(node: Node, in context: Context) throws {
        userId = try node.extract("userId")
        username = try node.extract("username")
        password = try node.extract("password")
        
        
    }
    
    init(userId: Int, username: String, password: String){
        
        self.userId = userId
        self.username = username
        self.password = password
        
    }
    
    func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "userId": userId,
            
            "username": "\(username)",
            "password": "\(password)",
                        ])
        
    }
    
    static func prepare(_ database: Database) throws {
        //
    }
    
    static func revert(_ database: Database) throws {
        //
    }
}







