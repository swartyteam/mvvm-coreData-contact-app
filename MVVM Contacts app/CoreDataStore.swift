//
//  CoreDataStore.swift
//  MVVM Contacts app
//
//  Created by Kirill Verhoturov on 11.01.2018.
//  Copyright © 2018 Kirill Verhoturov. All rights reserved.
//

import CoreData
import UIKit

class CoreDataStore {

    static var persistentStoreCoordinator: NSPersistentStoreCoordinator? {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.persistentStoreCoordinator
        }
        return nil
    }

    static var managedObjectModel: NSManagedObjectModel? {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.managedObjectModel
        }
        return nil
    }

    static var managedObjectContext: NSManagedObjectContext? {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.managedObjectContext
        }
        return nil
    }

}
