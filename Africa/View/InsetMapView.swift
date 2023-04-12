//
//  InsetMapView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: PROPERTIES
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 6.602286,
            longitude: 16.4377599
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 60.0,
            longitudeDelta: 60.0
        )
    )
    

    // MARK: BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }
                    .padding(12),
                alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
        
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
