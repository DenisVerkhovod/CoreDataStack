//
//  CoreDataStorage
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import Foundation

/// Configure in-memory `NSPersistentStoreDescription` which is appropriate to use it in tests.
struct TestEnvironmentPersistentStoreDescriptionConfigurator: PersistentStoreDescriptionConfigurator {
    
    // MARK: - Methods
    
    func configure(_ description: NSPersistentStoreDescription) throws {
        description.url = URL(fileURLWithPath: "/dev/null")
    }
    
}
