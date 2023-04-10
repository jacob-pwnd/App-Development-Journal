//
//  DataController.swift
//  DrivingApp
//
//  Created by user232149 on 4/3/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    //Next Step- Steve Jobs comp, NSContain
    
    //core data type to load
    let container = NSPersistentContainer(name: "Driver")
    
    
    init(){
        container.loadPersistentStores{description, error in
            if let error = error {
                print("core data load failed \(error.localizedDescription)")
            }
        }
    }
}
