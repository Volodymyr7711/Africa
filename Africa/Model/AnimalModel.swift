//
//  AnimalModel.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}
