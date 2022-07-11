//
//  ShapeFactory.swift
//  drawingApp
//
//  Created by dale on 2022/07/11.
//

import Foundation

struct ShapeFactory {
    static let shared = ShapeFactory()

    func make(_ type: ShapeType) -> Shapable {
        switch type {
        case .rectangle:
            return Rectangle()
        case .triangle:
            return Triangle()
        case .image:
            return ImageShape()
        }
    }
}
