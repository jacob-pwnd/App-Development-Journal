//
//  Animal.swift
//  CatsandDogsV1
//
//  Created by user232149 on 3/27/23.
//

import Foundation

//we will create a class animals and store important feature related information in it
class Animal {
    //url for the animals image
    var imgUrl: String
    
    //image Data
    var imageData: Data?
    
    //creating and empty class of animal
    init(){
        self.imgUrl = ""
        self.imageData = nil
        
    }//end of init
    init?(json:[String: Any]){
        
        //check json has url
        guard let imgUrl = json["url"] as?String else {return nil}
        
        
        //set the animal property
        self.imgUrl = imgUrl
        self.imageData = nil
        
        //download image data
        getImage()
        
        
    }//emd of init json
    
    func getImage(){
        //fill in later
    }
}
