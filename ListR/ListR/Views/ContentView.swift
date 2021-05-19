//
//  ContentView.swift
//  ListR
//
//  Created by user190175 on 5/6/21.
//

import SwiftUI


struct ContentView: View {
    var countryController = CountryController()
    var body: some View {
        NavigationView {
            List(countryController.countryCollection) {country in
                NavigationLink(destination: DetailView(country:country)) {
                    Text(country.name)
                }
                    
            }//List
            .navigationBarTitle("Countries",displayMode: .inline)
            
            .navigationBarItems(
                            trailing:NavigationLink(destination: addCountryView(cityName: "Country")) {
                                Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        )
        }//NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


