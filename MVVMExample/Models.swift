//
//  Models.swift
//  MVVMExample
//
//  Created by Elisa Camillo on 05/04/21.
//

import Foundation

enum Gender {
    case masc, fem, other
}

struct Person {
    let name: String
    let birthdate: Date?
    let middleName: String?
    let address: String?
    let gender: Gender
    
    init(name: String,
        birthdate: Date? = nil,
        middleName: String? = nil,
        address: String? = nil,
        gender: Gender = .other
    ) {
        self.name = name
        self.birthdate = birthdate
        self.middleName = middleName
        self.address = address
        self.gender = gender
    }
}
