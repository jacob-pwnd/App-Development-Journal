//
//  ContentModel.swift
//  GnoME-Screens
//
//  Created by user232149 on 3/31/23.
//

import Foundation

class ContentModel:ObservableObject{
    //list of modules
    @Published var modules = [Module]()
    
    //current module
    @Published var currentModule:Module?
   var currentModuleIndex = 0
    
    init(){
        getLocalData()
    }//end of init
    
    //func getLocalData()
    func getLocalData(){
        //get url for the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        //read this file into the data objects
        
        do{
            let jsonData = try Data(contentsOf: jsonUrl!)
                //decode this content into the data objects
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign the passed the modules to property
            self.modules = modules
            
            
        }//end of do
        catch{
            //log error
            print("Parsing the json file failed!")
            
        }//end of catch
        
        
    }//end of func
    
    //module navigation method
    func beginModule(_ moduleId: Int){
        //find the index for this module
        for index in 0..<modules.count{
            if modules[index].id == moduleId{
                //found the match
                currentModuleIndex = index
                break
                
            }//end of if
        }//end of for
        
        //setting the current index
        currentModule = modules[currentModuleIndex]
    }
}
