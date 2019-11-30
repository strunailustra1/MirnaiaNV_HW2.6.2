//
//  PersonBuilder.swift
//  MirnaiaNV_HW2.6.2
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Foundation

class PersonBuilder {
    
    static let nameList = ["John", "James", "Kenny", "Kevin", "Mike"]
    
    static let surnameList = ["Smith", "Jonson", "Lopez", "Grande", "Martin"]
    
    static let emailList = ["last_chance@gmail.com",
                           "stangerinthedark_1998@gmail.com",
                           "MartinFrimen1989@gmail.com",
                           "lonelyDreams905@gmail.com",
                           "murder2019@gmail.com"]
    
    static let phoneList = ["89265783478",
                          "89231245690",
                          "89457645349",
                          "89125647898",
                          "89341235467"]
    
    static var nameListUsed: Set<String> = []
    static var surnameListUsed: Set<String> = []
    static var emailListUsed: Set<String> = []
    static var phoneListUsed: Set<String> = []
    
    static func getRandomValue(valueList: [String], valueListUsed: inout Set<String>) -> String {
        var value = ""
        repeat {
            let tmpValue = valueList.randomElement()!
            if !valueListUsed.contains(tmpValue) {
                valueListUsed.insert(tmpValue)
                value = tmpValue
            }
        } while value == ""
        return value
    }
    
    static func getPerson() -> Person {
        Person(name: getRandomValue(valueList: nameList, valueListUsed: &nameListUsed),
               surname: getRandomValue(valueList: surnameList, valueListUsed: &surnameListUsed),
               email: getRandomValue(valueList: emailList, valueListUsed: &emailListUsed),
               phone: getRandomValue(valueList: phoneList, valueListUsed: &phoneListUsed))
    }
}
