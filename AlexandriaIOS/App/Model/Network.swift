//
//  Network.swift
//  AlexandriaIOS
//
//  Created by Esteban Hernandez on 7/7/20.
//  Copyright © 2020 Esteban Hernandez. All rights reserved.
//

import Foundation
import CoreData
import Apollo
class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "http://ec2-3-88-249-72.compute-1.amazonaws.com:2019/graphql")!)
}
