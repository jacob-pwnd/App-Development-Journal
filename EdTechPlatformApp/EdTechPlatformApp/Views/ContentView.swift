//
//  ContentView.swift
//  EdTechPlatformApp
//
//  Created by admin on 3/8/23.
//

import SwiftUI

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
