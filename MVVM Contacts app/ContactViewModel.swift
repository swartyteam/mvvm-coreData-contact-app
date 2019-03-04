//
//  ContactViewModel.swift
//  MVVM Contacts app
//
//  Created by Kirill Verhoturov on 11.01.2018.
//  Copyright © 2018 Kirill Verhoturov. All rights reserved.
//

public struct ContactViewModel {
    var fullName: String
}

public func <(lhs: ContactViewModel, rhs: ContactViewModel) -> Bool {
    return lhs.fullName.lowercased() < rhs.fullName.lowercased()
}

public func >(lhs: ContactViewModel, rhs: ContactViewModel) -> Bool {
    return lhs.fullName.lowercased() > rhs.fullName.lowercased()
}
