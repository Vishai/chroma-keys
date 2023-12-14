//
//  MedialSegment.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/13/23.
//

import SwiftUI

struct MedialSegment: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47287*width, y: 0.51811*height))
        path.addCurve(to: CGPoint(x: 0.52579*width, y: 0.51859*height), control1: CGPoint(x: 0.48917*width, y: 0.5155*height), control2: CGPoint(x: 0.50664*width, y: 0.51526*height))
        path.addLine(to: CGPoint(x: 0.53872*width, y: 0.4864*height))
        path.addCurve(to: CGPoint(x: 0.46128*width, y: 0.48557*height), control1: CGPoint(x: 0.51537*width, y: 0.48177*height), control2: CGPoint(x: 0.48614*width, y: 0.48141*height))
        path.addCurve(to: CGPoint(x: 0.47287*width, y: 0.51811*height), control1: CGPoint(x: 0.46262*width, y: 0.48937*height), control2: CGPoint(x: 0.47287*width, y: 0.51811*height))
        path.closeSubpath()
        return path
    }
}
