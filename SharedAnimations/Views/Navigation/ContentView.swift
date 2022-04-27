//
//  ContentView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            List {

                Section(header: Text("Objects")) {

                    NavigationLink(destination: TaoJoyceComposableViewDescription()) {
                        
                        SimpleListItemView(title: "Tao, Joyce",
                                           caption: "Car moves from left to right")

                    }

                }
                
                Section(header: Text("Buttons")) {
                    
                    NavigationLink(destination: HarringtonWillComposableViewDescription()) {
                        
                        SimpleListItemView(title: "Harrington, Will",
                                           caption: "Thumbs up icon floats up on tap")

                    }

                }
                
            }
            .listStyle(GroupedListStyle())

        }
        .navigationTitle("Animations")
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
