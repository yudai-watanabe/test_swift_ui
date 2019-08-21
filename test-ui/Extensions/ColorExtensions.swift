//
//  ColorExtensions.swift
//  test-ui
//
//  Created by watanabe yudai on 2019/08/21.
//  Copyright © 2019 watanabe yudai. All rights reserved.
//

import Foundation

extension Color {
    
    static func rgb(red: Int, green: Int, blue: Int, opacity: Double = 1) -> Color {
        return Color(red: Double(red)/255, green: Double(green)/255, blue: Double(blue)/255, opacity: opacity)
    }
    
    static let border = Color.rgb(red: 47, green: 46, blue: 65)
    static let main = Color.rgb(red: 108, green: 99, blue: 255)
}
