//
//  CountryController.swift
//  ListR
//
//  Created by user190175 on 5/6/21.
//

import Foundation

class CountryController {
    //create a variable (array) which will hold the data for the list
    
    var countryCollection:[CountryModel]
    init(){
        //some objects into the array
        self.countryCollection = [
            CountryModel(id: UUID(), name:"Mexico", population: "127M"),
            CountryModel(id: UUID(), name:"USA", population: "389M"),
            CountryModel(id: UUID(), name:"Canada", population: "37M"),
            CountryModel(id: UUID(), name:"China", population: "1388M")
        ]
    }
    
    //function to call data from DB
    //function to add countries to the array
    
}
