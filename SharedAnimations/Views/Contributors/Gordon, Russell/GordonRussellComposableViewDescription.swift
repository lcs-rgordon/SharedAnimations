//
//  GordonRussellComposableViewDescription.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct GordonRussellComposableViewDescription: View {
    
    // MARK: Stored properties
    @State private var progressToShow: Double = 50.0
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Description")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    A blue bar moves across the screen from left to right.

                    Control the amount of progress by passing in a value between 0 and 100.
                    """)
                
                Slider(value: $progressToShow, in: 0...100)
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: GordonRussellComposableView(progress: progressToShow)) {
                    SimpleListItemView(title: "Progress meter",
                                       caption: "Simple progress meter expands left to right")
                }
            }
            
        }
        .padding()
        .navigationTitle("Gordon, Russell")
        
    }
}

struct GordonRussellComposableViewDescription_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GordonRussellComposableViewDescription()
        }
    }
}
