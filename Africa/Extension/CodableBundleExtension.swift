//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 10/04/2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loader = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        return loader
    }
}
