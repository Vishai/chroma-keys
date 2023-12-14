//
//  InteriorRingView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

import SwiftUI

let interiorSegmentColors: [Color] = [
    ColorTheme.cKBluer,
    ColorTheme.cKViolet,
    ColorTheme.cKPink,
    ColorTheme.cKRed,
    ColorTheme.cKOrange,
    ColorTheme.cKMarigold,
    ColorTheme.cKAutange,
    ColorTheme.cKLemon,
    ColorTheme.cKTrueBile,
    ColorTheme.cKLimeGreen,
    ColorTheme.cKTurqoise,
    ColorTheme.cKBlueGreen,
]

struct InteriorRingView: View {
    let numberOfSegments: Int
    let circleRadius: CGFloat
    let rotationOffset: Double
    let segmentColors: [Color]
    let notes: [String]

    var body: some View {
        ForEach(0..<numberOfSegments, id: \.self) { i in
            CircleSegmentView(
                segment: InteriorSegment(),
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
