//
//  CoreDataStorage
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

public enum NSManagedObjectInstantiatingError: Error {
    case creationError
    case noModels
}

public extension NSManagedObjectModel {
    
    static func make(name: String, bundle: Bundle) throws -> NSManagedObjectModel {
        guard let url = bundle.url(forResource: name, withExtension: "momd") else {
            throw NSManagedObjectInstantiatingError.noModels
        }
        guard let model = NSManagedObjectModel(contentsOf: url) else {
            throw NSManagedObjectInstantiatingError.creationError
        }

        return model
    }
    
}
