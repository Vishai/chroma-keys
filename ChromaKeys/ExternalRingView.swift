//
//  ExternalRingView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

// Going to extract the ExteriorRingView from the ContentView and call this in the ContentView.  For now I am going to build out the color theme for the circle, and then complete this [Color]

import SwiftUI

let exteriorSegmentColors: [Color] = [
    ColorTheme.cKMarigold,
    ColorTheme.cKLemon,
    ColorTheme.cKTrueBile,
    ColorTheme.cKLimeGreen,
    ColorTheme.cKTurqoise,
    ColorTheme.cKBlueGreen,
    ColorTheme.cKBluer,
    ColorTheme.cKViolet,
    ColorTheme.cKPink,
    ColorTheme.cKRed,
    ColorTheme.cKOrange,
    ColorTheme.cKAutange,
]

struct ExteriorRingView: View {
    let numberOfSegments: Int
    let circleRadius: CGFloat
    let rotationOffset: Double
    let segmentColors: [Color]
    let notes: [String]

    var body: some View {
        ForEach(0..<numberOfSegments, id: \.self) { i in
            CircleSegmentView(
                segment: ExteriorSegment(),
                color: segmentColors[i % segmentColors.count],
                note: notes[i % notes.count],
                rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + rotationOffset
            )
            .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
            .offset(x: circleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                    y: circleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
        }
    }
}

// Color(hex: "#Value")
