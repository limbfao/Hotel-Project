//
//  LastPage.swift
//  HotelProject
//
//  Created by vincent carrancho on 10/13/21.
//

// This is the last page for both flows (Check in and Check Out)

// TODO: Add navigation destination (line 20)

import SwiftUI

struct LastPage: View {
    
    @State var navigateToNext: Bool = false
    
    var body: some View {
        VStack {
            Text("You have checked in! Your room is {Room number}. Have a great stay at {Hotel Name}!")
                .font(.system(size: 48)).fontWeight(.semibold)
            Text("Please remember to use your fingerprint to unlock your room! Have a great stay and see you at check out!").font(.system(size: 24)).padding()
            Button (action: nextClicked, label: {
                            Text("Finish")
                                .font(.system(size: 24))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 300, height: 100)
                                .background(
                                    Color.black
                                        .cornerRadius(20))
                                .padding()
                        })
                        
                        NavigationLink("Finish", isActive: $navigateToNext, destination: {Root()}).hidden()
            // On the navigation press, make sure to discard the data for the object. !!ONLY FOR THE NEW RESERVATION PAGE not the check in beause all the information is there already.
        }
        
    }
    
    func nextClicked() -> Void {
            navigateToNext = !navigateToNext
        }
    
}

struct LastPage_Previews: PreviewProvider {
    static var previews: some View {
        LastPage()
    }
}
