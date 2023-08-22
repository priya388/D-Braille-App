//
//  ResuableText.swift
//  D-Braille
//
//  Created by LowVisionProject on 18/06/2023.
//

import Foundation
import SwiftUI

struct ReusableText: View {
    var text: String
    var size: CGFloat
    var body: some View {
        Text(text)
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
    }
}
