//
//  GordonRussellComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct GordonRussellComposableView: View {
    
    // MARK: Stored properties
    
    // For controlling how much progress will be shown
    let progress: Double

    // Starting position of the progress meter
    @State private var currentProgress = 0.0
    @State private var inverseCurrentProgress = 100.0

    // For triggering the start of the animation, after 1/4 of a second
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()

    // MARK: Computed properties
    var body: some View {
        
        ZStack {

            // Background
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 200, height: 20)
                .foregroundColor(.gray)

            HStack {
                
                // Indicator
                RoundedRectangle(cornerRadius: 5)
                    // Width starts at zero progress
                    .frame(width: currentProgress * 2, height: 20)
                    .foregroundColor(.blue)
                
                // Keeps indicator left aligned
                Spacer()
                    // Width starts at full progress
                    .frame(width: inverseCurrentProgress * 2)
                
            }

        }
        .onReceive(timer) { input in
            
            withAnimation(
                Animation.easeInOut(duration: 2.0)
            ) {
                
                // Fill to desired progress
                // e.g.: 25%
                currentProgress = progress
                
                // Inverse of current progress
                // e.g.: 75%
                inverseCurrentProgress -= currentProgress
                
            }
            
            // Stop timer from continuing to fire
            timer.upstream.connect().cancel()
            
        }
        
    }
}

struct GordonRussellComposableView_Previews: PreviewProvider {
    static var previews: some View {
        GordonRussellComposableView(progress: 50.0)
    }
}
