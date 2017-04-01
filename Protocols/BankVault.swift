//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

class BankVault: ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        if !password.isEmpty && password.count <= 10 {
            for (index, e) in password.enumerated() {
                guard index % 2 == 0 else { continue }
                
                if e % 2 != 0 { return false }
            }
        } else {
            return false
        }
        
        return true
    }
}





