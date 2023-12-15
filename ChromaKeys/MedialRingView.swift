//
//  MedialRingView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//


import SwiftUI

let medialSegmentColors: [Color] = [
    ColorTheme.cKLimeGreen,
    ColorTheme.cKTurqoise,
    ColorTheme.cKBlueGreen,
    ColorTheme.cKBluer,
    ColorTheme.cKViolet,
    ColorTheme.cKPink,
    ColorTheme.cKRed,
    ColorTheme.cKOrange,
    ColorTheme.cKAutange,
    ColorTheme.cKMarigold,
    ColorTheme.cKLemon,
    ColorTheme.cKTrueBile,
]

let medialSegmentNotes: [String] = [
   "f\u{266F}m",
   "c\u{266F}m",
   "g\u{266F}m",
   "e\u{266D}m",
   "b\u{266D}m",
   "fm",
   "cm",
   "gm",
   "dm",
   "am",
   "em",
   "bm"
]

struct MedialRingView: View {
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
                segment: MedialSegment(),
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
