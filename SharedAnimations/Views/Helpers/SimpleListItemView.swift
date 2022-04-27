//
//  SimpleListItemView.swift
//  SharedAnimations
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct SimpleListItemView: View {
    
    var title: String
    var caption: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
            
            Text(caption)
                .font(.caption)
            
        }
    }
}

struct SimpleListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListItemView(title: "Some title",
                           caption: "Some caption")
    }
}
