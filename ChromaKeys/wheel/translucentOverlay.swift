//
//  translucentOverlay.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 1/5/24.
//

import SwiftUI

struct translucentOverlay: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let width = rect.size.width
    let height = rect.size.height
    path.move(to: CGPoint(x: 0.48581*width, y: 0.43782*height))
    path.addCurve(to: CGPoint(x: 0.51638*width, y: 0.43782*height), control1: CGPoint(x: 0.49555*width, y: 0.43544*height), control2: CGPoint(x: 0.5058*width, y: 0.43556*height))
    path.addCurve(to: CGPoint(x: 0.52914*width, y: 0.40527*height), control1: CGPoint(x: 0.51907*width, y: 0.42986*height), control2: CGPoint(x: 0.52629*width, y: 0.41299*height))
    path.addCurve(to: CGPoint(x: 0.57702*width, y: 0.42487*height), control1: CGPoint(x: 0.54662*width, y: 0.40729*height), control2: CGPoint(x: 0.56677*width, y: 0.4168*height))
    path.addCurve(to: CGPoint(x: 0.65648*width, y: 0.37118*height), control1: CGPoint(x: 0.57702*width, y: 0.42487*height), control2: CGPoint(x: 0.6516*width, y: 0.37415*height))
    path.addCurve(to: CGPoint(x: 0.71762*width, y: 0.47666*height), control1: CGPoint(x: 0.66639*width, y: 0.37938*height), control2: CGPoint(x: 0.71779*width, y: 0.41466*height))
    path.addCurve(to: CGPoint(x: 0.50109*width, y: 0.63226*height), control1: CGPoint(x: 0.72014*width, y: 0.54033*height), control2: CGPoint(x: 0.65328*width, y: 0.63072*height))
    path.addCurve(to: CGPoint(x: 0.2812*width, y: 0.47737*height), control1: CGPoint(x: 0.3484*width, y: 0.63072*height), control2: CGPoint(x: 0.2812*width, y: 0.54151*height))
    path.addCurve(to: CGPoint(x: 0.34806*width, y: 0.36786*height), control1: CGPoint(x: 0.28473*width, y: 0.43117*height), control2: CGPoint(x: 0.30086*width, y: 0.40361*height))
    path.addCurve(to: CGPoint(x: 0.42315*width, y: 0.42392*height), control1: CGPoint(x: 0.38182*width, y: 0.39304*height), control2: CGPoint(x: 0.41307*width, y: 0.41644*height))
    path.addCurve(to: CGPoint(x: 0.47287*width, y: 0.40361*height), control1: CGPoint(x: 0.43944*width, y: 0.41228*height), control2: CGPoint(x: 0.45087*width, y: 0.40872*height))
    path.addCurve(to: CGPoint(x: 0.48581*width, y: 0.43782*height), control1: CGPoint(x: 0.47808*width, y: 0.41846*height), control2: CGPoint(x: 0.48581*width, y: 0.43782*height))
    path.closeSubpath()
    return path
  }
}
