//
//  ContentView.swift
//  ListR
//
//  Created by user190175 on 5/6/21.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var  countryController = CountryController()
    var body: some View {
        NavigationView {
            /*List(countryController.countryCollection) {country in
                NavigationLink(destination: DetailView(country:country)) {
                    Text(country.name)
                }
                 
            }//List
            */
            List{
                ForEach(countryController.countryCollection){country in
                    NavigationLink(destination: DetailView(country:country)) {
                        Text(country.name)
                    }
                }.onDelete(perform: deleteItem)
            }
            .navigationBarTitle("Countries",displayMode: .inline)
            
            .navigationBarItems(
                trailing:NavigationLink(destination: addCountryView(countryController:countryController)) {
                                Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        )
        }//NavigationView
    }
    private func deleteItem(at indexSet: IndexSet){
        self.countryController.countryCollection.remove(atOffsets: indexSet)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


