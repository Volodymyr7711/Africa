//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel

    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { galleryItem in
                    Image(galleryItem)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
