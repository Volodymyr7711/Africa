//
//  CenterModifier.swift
//  Africa
//
//  Created by Volodymyr Mendyk on 12/04/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
