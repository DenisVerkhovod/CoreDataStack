//
//  CoreDataStorage
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

public protocol PersistentStoreDescriptionConfigurator {

    func configure(_ description: NSPersistentStoreDescription) throws
    
}
