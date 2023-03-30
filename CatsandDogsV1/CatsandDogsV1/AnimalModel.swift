//
//  AnimalModel.swift
//  CatsandDogsV1
//
//  Created by user232149 on 3/27/23.
//

import Foundation

class AnimalMode{
    
    var animal = Animal()
    
    func getAnimal(){
        let stringUrl = Bool.random() ? catUrl: dogUrl
        
        //1. create the url object
        let url = URL(string: stringUrl)
        
        //2. check if url is empty
        guard url != nil else {
            print("Couldn't create url")
            return}
        
        //3. Get url
        let session = URLSession.shared
        
        //4. Create data task
        let dataTask = session.dataTask(with: url!) {(data, response, error) in
            if error == nil && data != nil{
            do{
                //parse the json file
                if let json = try JSONSerialization.jsonObject(with: data!, options:[]) as?[[String: Any]]{
                    let item = json.isEmpty ? [:]: json[0]
                    
                    
                    
                    if let animal = Animal(json: item){
                        DispatchQueue.main.sync {
                            while animal.imageData == nil {}
                            self.animal = animal
                        }//end of dispatch queue
                    }//end of if
                }//end of iftem if
            }
            catch{
                print("json parsing failed")
            }
                
                                                               }
        }
        
    }
}
