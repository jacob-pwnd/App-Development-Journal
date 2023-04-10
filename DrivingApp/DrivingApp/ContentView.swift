//
//  ContentView.swift
//  DrivingApp
//
//  Created by user232149 on 4/3/23.
//

import SwiftUI
/*
struct Driver{
    var id: UUID()
    var name: String
} */


struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    
    @FetchRequest(sortDescriptors: []) var drivers:
        FetchedResults<Driver>

    var body: some View {
        VStack {
            List(drivers){ driver in
                Text((driver.name ?? "Unknown"))
            }//end of list
            
            Button("Add names"){
                let firstNames = ["A","B","C","D"]
                let lastNames = ["E","F","G","H"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()
                
                let driver = Driver(context: moc)
                
                driver.id = UUID()
                driver.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()
            }//end of button
        }//end of Vstack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
