//
//  Contact.swift
//  Contacts
//
//  Created by Jeremy Warren on 9/10/21.
//

import Foundation

class Contact: Codable {
    var name: String
    var email: String
    var phone: Int
    var address: String
    
    init(name: String, email: String, phone: Int, address: String) {
        self.name = name
        self.email = email
        self.phone = phone
        self.address = address
    }
}

extension Contact: Equatable {
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.name == rhs.name &&
            lhs.email == lhs.email &&
            lhs.phone == rhs.phone
            lhs.address == rhs.address
    }
    
    
}
