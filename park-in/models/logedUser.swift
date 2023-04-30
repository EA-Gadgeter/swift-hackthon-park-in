//
//  logedUser.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import Foundation

struct LogedUser: Codable {
    enum CodingKeys: CodingKey {
        case UUID
        case email
        case password
        case phoneNumber
        case creditCard
        case cardEndDate
        case cardCVV
        case userName
        case userAddress
        case userCity
        case CP
    }
    
    var UUID: String
    var email: String
    var password: String
    var phoneNumber: String
    var creditCard: String
    var cardEndDate: String
    var cardCVV: String
    var userName: String
    var userAddress: String
    var userCity: String
    var CP: String
}
