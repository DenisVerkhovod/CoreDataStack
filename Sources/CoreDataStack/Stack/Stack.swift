//
//  CoreDataStack
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

/// Represents Core Data stack.
public final class Stack {
    
    // MARK: - Properties
    
    let mainContext: NSManagedObjectContext
    let readContext: NSManagedObjectContext
    let writeContext: NSManagedObjectContext
    
    private let persistentContainer: NSPersistentContainer
      
    // MARK: - Initialization
    
    init(
        container: NSPersistentContainer,
        mainContextConfigurator: ((NSManagedObjectContext) -> Void)? = nil,
        readContextConfigurator: ((NSManagedObjectContext) -> Void)? = nil,
        writeContextConfigurator: ((NSManagedObjectContext) -> Void)? = nil
    ) {
        persistentContainer = container
        self.mainContext = configure(container.viewContext, with: mainContextConfigurator ?? Self.viewContextDefaultConfigurator)
        self.readContext = configure(container.newBackgroundContext(), with: readContextConfigurator ?? Self.readContextDefaultConfigurator)
        self.writeContext = configure(container.newBackgroundContext(), with: writeContextConfigurator ?? Self.writeContextDefaultConfigurator)
    }
}
