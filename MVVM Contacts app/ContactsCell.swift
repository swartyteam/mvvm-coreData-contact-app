//
//  ContactsCell.swift
//  MVVM Contacts app
//
//  Created by Kirill Verhoturov on 11.01.2018.
//  Copyright © 2018 Kirill Verhoturov. All rights reserved.
//

import UIKit

class ContactsCell: UITableViewCell {
    var cellModel: ContactViewModel? {
        didSet {
            bindViewModel()
        }
    }

    func bindViewModel() {
        textLabel?.text = cellModel?.fullName
    }
}
