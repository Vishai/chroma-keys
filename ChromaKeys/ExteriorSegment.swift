//
//  ExteriorSegment.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/13/23.
//

import SwiftUI

struct ExteriorSegment: CircleSegment {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.44616*width, y: 0.48581*height))
        path.addCurve(to: CGPoint(x: 0.55249*width, y: 0.48687*height), control1: CGPoint(x: 0.47673*width, y: 0.48082*height), control2: CGPoint(x: 0.51319*width, y: 0.47915*height))
        path.addCurve(to: CGPoint(x: 0.53855*width, y: 0.52156*height), control1: CGPoint(x: 0.55249*width, y: 0.48687*height), control2: CGPoint(x: 0.53956*width, y: 0.51918*height))
        path.addCurve(to: CGPoint(x: 0.45859*width, y: 0.52061*height), control1: CGPoint(x: 0.51167*width, y: 0.51645*height), control2: CGPoint(x: 0.48765*width, y: 0.51645*height))
        path.addCurve(to: CGPoint(x: 0.44616*width, y: 0.48581*height), control1: CGPoint(x: 0.4554*width, y: 0.51158*height), control2: CGPoint(x: 0.44616*width, y: 0.48581*height))
        path.closeSubpath()
        
        return path
    }
}
