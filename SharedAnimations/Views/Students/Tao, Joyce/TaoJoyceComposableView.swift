//
//  TaoJoyceComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct TaoJoyceComposableView: View {
    
    // MARK: Stored properties
    // Control the horizontal offset
    @State var offset = 0.0
    
    // Control the rotation angle
    @State var currentRotationAngle = Angle.degrees(0)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 60, height: 50)
                    .foregroundColor(.red)
                    .offset(x: offset - 25.0, y: 50)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 25, height: 30)
                    .foregroundColor(.white)
                    .offset(x: offset - 16.0, y: 50)
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 120, height: 50)
                .foregroundColor(.red)
                .offset(x: offset - 25.0, y: 30)
            
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 40, height: 40)
                    RoundedRectangle(cornerRadius: 3.5)
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                }
                .rotationEffect(currentRotationAngle, anchor: .center)
                .offset(x: offset - 50.0, y: 0)
                ZStack {
                    Circle()
                        .frame(width: 40, height: 40)
                    RoundedRectangle(cornerRadius: 3.5)
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                }
                .rotationEffect(currentRotationAngle, anchor: .center)
                .offset(x: offset, y: 0)
            }
        }
        .animation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever(autoreverses: true)
        )
        .onTapGesture {
            // Move the circle to the right
            offset = 100.0
            
            // Rotate a full revolution
            currentRotationAngle = .degrees(360)
        }
    }
}

struct TaoJoyceComposableView_Previews: PreviewProvider {
    static var previews: some View {
        TaoJoyceComposableView()
    }
}
