//
//  File.swift
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

protocol PersistentStoreDescriptionConfigurator {

    func configure(_ description: NSPersistentStoreDescription) throws
    
}
