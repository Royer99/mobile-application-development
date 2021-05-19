//
//  addCountryView.swift
//  ListR
//
//  Created by user190175 on 5/13/21.
//

import SwiftUI

struct addCountryView: View {
    
    @State  var cityName : String
    var body: some View {
            VStack{
                    
                TextField("Add City Name", text: $cityName)
                
                Text(cityName)
              
            }// VStack
            .navigationBarTitle("Add a New Country")
        }
}

struct addCountryView_Previews: PreviewProvider {
    static var previews: some View {
        addCountryView(cityName: "Country")
    }
}
