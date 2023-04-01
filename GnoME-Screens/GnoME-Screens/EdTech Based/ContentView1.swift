//
//  ContentView1.swift
//  GnoME-Screens
//
//  Created by user232149 on 3/31/23.
//

import SwiftUI

struct ContentView1: View {
    @EnvironmentObject var model:ContentModel
    var body: some View {
        
        
        ScrollView{
            LazyVStack{
                if model.currentModule != nil{
                    
                }
            }
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
