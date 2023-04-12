//
//  HeadingView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import SwiftUI

struct HeadingView: View {
    // MARK: PROPERTIES
    var headingImage: String
    var headlineText: String

    // MARK: BODY
    var body: some View {
        HStack {
           Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headlineText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headlineText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
