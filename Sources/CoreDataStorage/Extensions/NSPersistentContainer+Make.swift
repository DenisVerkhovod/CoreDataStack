//
//  File.swift
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

extension NSPersistentContainer {

    static func makePersistentContainer<Container: NSPersistentContainer>(
        named name: String,
        for model: NSManagedObjectModel,
        configurator: PersistentStoreDescriptionConfigurator
    ) throws -> Container {
        let persistentContainer = Container(name: name, managedObjectModel: model)

        let description = NSPersistentStoreDescription()
        try configurator.configure(description)
        
        persistentContainer.persistentStoreDescriptions = [
            description
        ]

        return persistentContainer
    }
    
}
