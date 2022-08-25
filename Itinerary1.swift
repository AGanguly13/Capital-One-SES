//
//  Itinerary1.swift
//  Component3SES
//
//  Created by Adwait Ganguly on 8/4/22.
//

import SwiftUI

struct Itinerary1: View {
    
    init() {
            UITableView.appearance().backgroundColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
        
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }

    var body: some View {
        NavigationView {
            
            ZStack {
                VStack (spacing: 0) {
                    LinearGradient (gradient: Gradient(colors: [Color.init("CapitolBlue"), Color("CapitalRed")]),
                                                    startPoint: .center,
                                                    endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all).overlay(
                    
                    List {
                        Section(header: Text("Day 1") .foregroundColor(.white)){
                        Text("✈️ - Flight to Lake Como           $450.00")
                        Text("🚗 - Taxi to AirBNB                      $40.00")
                        Text("🏠 - 2 Night Stay                         $845.00")
                        }
                        
                        Section(header: Text("Day 2") .foregroundColor(.white)){
                        Text("🍽 - Lunch @Ristorante Momi     $65.00")
                        Text("🛥 - Sunset Boatride                     $100.00")
                        Text("🍽 - Dinner @La Colombetta       $130.00")
                        }
                        
                        Section(header: Text("Day 3") .foregroundColor(.white)){
                        Text("☕️ - Coffee @Caffe Maya             $10.00")
                        Text("⛰ - Province of Como Tour         $80.00")
                        Text("🚞 - Train to Milan Airport             $30.00")
                        Text("✈️ - Flight to NY                          $550.00")
                        }
                        
                        HStack {
                            Spacer()
                            Button("Select Itinerary: $2,300"){
                            }
                            .buttonStyle(FilledButtonStyle())
                            Spacer()
                        }
                    }
                    )
                }
            }
            .navigationTitle("Itinerary 1")
        }
    }
}

struct FilledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .padding(.horizontal, 50)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color(red: 0.0, green: 0.3, blue: 0.8) : .blue)
            .cornerRadius(10)
    }
}

struct Itinerary1_Previews: PreviewProvider {
    static var previews: some View {
        Itinerary1()
    }
}
