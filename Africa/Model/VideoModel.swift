//
//  VideoModel.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import Foundation

struct Video: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
