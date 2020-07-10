//
//  Auth.swift
//  AlexandriaIOS
//
//  Created by Esteban Hernandez on 7/2/20.
//  Copyright © 2020 Esteban Hernandez. All rights reserved.
//

import Foundation

class Auth {
    
    func CheckLogin(email:String, password:String) {
        Network.shared.apollo.fetch(query: LoginQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                let name = String(graphQLResult.data!.logIn!.name!) + " " + String(graphQLResult.data!.logIn!.lastName!)
                print("Success! Bienvenido: \(name)")
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    
}
