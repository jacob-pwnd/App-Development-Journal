//
//  ContentView.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        NavigationView{
            VStack{
                Text("What do you want to do today?")
                ScrollView{
                    LazyVStack{
                        ForEach(model.modules){module in
                            
                            VStack{
                                
                                NavigationLink(destination: ContentView()
                                    .onAppear(perform: {model.beginModule(module.id)})) {
                                    HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)

                                }
                                //learning card
                                
                                //quiz card
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                        .aspectRatio(CGSize(width: 335, height: 175),
                                                     contentMode: .fit)
                                    HStack{
                                        //image
                                        Image(module.content.image)
                                            .resizable()
                                            .frame(width: 116,height: 116)
                                            .clipShape(Circle())
                                            .padding(.trailing)
                                        
                                        //text
                                        VStack(alignment:.leading, spacing: 10){
                                            //headline
                                            Text("Quiz " + module.category)
                                                .bold()
                                            //Description
                                            Text(module.content.description)
                                            //icons
                                            HStack{
                                                //icons
                                                //number of lessons
                                                Image("driving basics")
                                                    .resizable()
                                                    .frame(width: 15,height: 15)
                                                //icon text.book.libary
                                                Text("\(module.content.lessons.count) questions")
                                                    .font(.caption)
                                                
                                                //time
                                                Image("driving basics")
                                                    .resizable()
                                                    .frame(width: 15,height: 15)
                                                //icon clock
                                                Text("\(module.quiz.time)")
                                                    .font(.caption)
                                                
                                            }
                                            .padding(.horizontal, 20)
                                            
                                            
                                        }//end of VStack
                                        .padding(.leading, 20)
                                    }
                                }
                            }
                            
                        }
                    }
                    
                }
            }
            .navigationTitle("Get Started")
        }
    }
    }
    


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
