//
//  CoreDataStack
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

extension Stack {
    
    static let viewContextDefaultConfigurator: (NSManagedObjectContext) -> Void = { context in
        context.automaticallyMergesChangesFromParent = true
        context.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
    }
    
    static let readContextDefaultConfigurator: (NSManagedObjectContext) -> Void = { context in
        context.automaticallyMergesChangesFromParent = true
        context.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump
    }
    
    static let writeContextDefaultConfigurator: (NSManagedObjectContext) -> Void = { context in
        context.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
    }
    
}
