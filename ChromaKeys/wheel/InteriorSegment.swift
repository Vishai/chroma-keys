//
//  InteriorSegment.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

import SwiftUI

struct InteriorSegment: CircleSegment {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.52461*width, y: 0.48676*height))
        path.addLine(to: CGPoint(x: 0.51235*width, y: 0.51728*height))
        path.addCurve(to: CGPoint(x: 0.4853*width, y: 0.51704*height), control1: CGPoint(x: 0.5016*width, y: 0.5155*height), control2: CGPoint(x: 0.49236*width, y: 0.51598*height))
        path.addCurve(to: CGPoint(x: 0.47421*width, y: 0.48628*height), control1: CGPoint(x: 0.4853*width, y: 0.51704*height), control2: CGPoint(x: 0.47573*width, y: 0.4902*height))
        path.addCurve(to: CGPoint(x: 0.52461*width, y: 0.48676*height), control1: CGPoint(x: 0.49101*width, y: 0.48355*height), control2: CGPoint(x: 0.50882*width, y: 0.48379*height))
        path.closeSubpath()
        return path
    }
}
