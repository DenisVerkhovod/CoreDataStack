//
//  CoreDataStack
//  
//
//  Created by Denis Verkhovod on 06.08.2022.
//

import CoreData

/// Global function to configure an object with given closure.
func configure<T>(_ object: T, with configurator: (T) -> Void) -> T {
    configurator(object)
    
    return object
}
