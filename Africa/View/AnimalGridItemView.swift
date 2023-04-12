//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 12/04/2023.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
