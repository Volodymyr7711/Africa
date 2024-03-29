//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: AnimalModel
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical ,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
               // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
               // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled",
                        headlineText: "Wilderness in Pictures"
                    )
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headlineText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headlineText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.center)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                
                // MAP
                Group {
                    HeadingView(headingImage: "map", headlineText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headlineText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[2])
        }
    }
}
