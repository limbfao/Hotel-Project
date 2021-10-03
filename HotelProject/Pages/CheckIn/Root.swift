//
//  Root.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

import SwiftUI

struct Root: View {
    var body: some View {
        NavigationView {
            // This is the root naviagtion view.
            // The navigation is controlled by this view.
            VStack(alignment: .leading){
                Text("Welcome to Hotel {Name}!").font(.system(size: 72)).fontWeight(.bold).multilineTextAlignment(.leading)
                NavigationLink(destination: LanguageSelection(), label: {Text("Tap here to begin Check-In or Room Reservation Process.")
                    .font(.system(size: 36))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)})
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Root().previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}