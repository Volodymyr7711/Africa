//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 11/04/2023.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = .zero

    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 1)
                .frame(width: 54, height: 54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 100, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear {
            withAnimation(.easeOut(duration: 2.0).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
