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
                
                Section(header: Text("Buttons")) {
                    
                    NavigationLink(destination: HarringtonWillComposableViewDescription()) {
                        
                        SimpleListItemView(title: "Harrington, Will",
                                           caption: "Thumbs up icon floats up on tap")

                    }

                }

                Section(header: Text("Loading Indicators")) {
                    
                    NavigationLink(destination: YuJudyComposableViewDescription()) {
                        
                        SimpleListItemView(title: "Yu, Judy",
                                           caption: "Four circles expand and rotate")

                    }

                }

                Section(header: Text("Objects")) {

                    NavigationLink(destination: TaoJoyceComposableViewDescription()) {
                        
                        SimpleListItemView(title: "Tao, Joyce",
                                           caption: "Car moves from left to right")

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
