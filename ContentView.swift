//
//  ContentView.swift
//  Shared
//
//  Created by Adwait Ganguly on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            UITableView.appearance().backgroundColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
        
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        
        NavigationView{

                ZStack{

                    VStack {
                        LinearGradient (gradient: Gradient(colors: [Color.init("CapitolBlue"), Color("CapitalRed")]),
                                                        startPoint: .center,
                                                        endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all).overlay(
                        List {
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 1  - $2,300")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 2  - $2,750")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 3  - $2,900")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 4  - $3,200")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 5  - $3,300")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 6  - $4,000")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 7  - $4,100")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 8  - $4,300")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 9  - $4,900")
                                }
                                
                                NavigationLink{
                                    Itinerary1()
                                } label: {
                                    Text("Itinerary 10  - $5,000")
                                }
                            }
                        )
                        }
            }
                .navigationBarTitle("Itineraries")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

