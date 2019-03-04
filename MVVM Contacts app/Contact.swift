//
//  Contact.swift
//  MVVM Contacts app
//
//  Created by Kirill Verhoturov on 11.01.2018.
//  Copyright © 2018 Kirill Verhoturov. All rights reserved.
//

import CoreData

open class Contact: NSManagedObject {

    var fullName: String {
        get {
            var name = ""
            if let firstName = firstName {
                name += firstName
            }
            if let lastName = lastName {
                name += " \(lastName)"
            }
            return name
        }
    }
}


extension Contact {
    
    @NSManaged var firstName: String?
    @NSManaged var lastName: String?
    
}
