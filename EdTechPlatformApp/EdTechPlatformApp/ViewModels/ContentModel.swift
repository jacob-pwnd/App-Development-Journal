//
//  ContentModel.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//

import Foundation

class ContentModel:ObservableObject{
    
    @Published var modules = [Module]()
    
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
}
