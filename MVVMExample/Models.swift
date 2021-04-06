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
}
