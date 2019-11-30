//
//  Person.swift
//  MirnaiaNV_HW2.6.2
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    var initials: String {
        name + " " + surname
    }
}
