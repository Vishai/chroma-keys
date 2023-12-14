//
//  ExternalRingView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

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

let exteriorSegmentNotes: [String] = [
   "A",
   "E",
   "B",
   "Gb F#",
   "Db",
   "Ab",
   "Eb",
   "Bb",
   "F",
   "C",
   "G",
   "D"
]
struct ExteriorRingView: View {
    let numberOfSegments: Int
    let circleRadius: CGFloat
    let rotationOffset: Double
    let segmentColors: [Color]
    let notes: [String]
    let fontSize: CGFloat
    let frameWidth: CGFloat
    let frameHeight: CGFloat

    var body: some View {
        ForEach(0..<numberOfSegments, id: \.self) { i in
            CircleSegmentView(
                segment: ExteriorSegment(),
                color: segmentColors[i % segmentColors.count],
                note: notes[i % notes.count],
                rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + rotationOffset,
                fontSize: fontSize,
                frameWidth: frameWidth,
                frameHeight: frameHeight
                
            )
            .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
            .offset(x: circleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                    y: circleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
        }
    }
}

// Color(hex: "#Value")
