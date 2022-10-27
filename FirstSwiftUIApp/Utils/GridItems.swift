//
//  GridItems.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

import SwiftUI

class GridItems {
    func flexible(minimum: CGFloat) -> GridItem {
        return GridItem(.flexible(minimum: minimum)) // minimun params is the width of the items
    }
    func fixed(size: CGFloat) -> GridItem {
        return GridItem(.fixed(size)) // 150 is the width of the items. The width will be fixed.
    }
    func adaptive(minimum: CGFloat, maximum: CGFloat) -> GridItem {
        return GridItem(.adaptive(minimum: minimum, maximum: maximum))
    }
}
