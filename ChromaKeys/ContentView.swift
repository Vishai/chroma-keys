//
//  ContentView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/13/23.


import SwiftUI

struct ContentView: View {
    let numberOfSegments = 12
    let circleRadius: CGFloat = 150  // 82
    let medialCircleRadius: CGFloat = 105
    let interiorCircleRadius: CGFloat = 65
    let additionalRotation: Double = 89
    let notes = ["C", "G", "D", "A", "E", "B", "F#", "Db", "Ab", "Eb", "Bb", "F"] // Example notes
    let segmentColors: [Color] = [.red, .blue, .green, .orange, .purple, .pink, .yellow, .gray, .cyan, .mint, .indigo, .teal]
    
    var body: some View {
        ZStack {
            ForEach(0..<numberOfSegments, id: \.self) { i in
                ForEach(0..<numberOfSegments, id: \.self) { i in
                    CircleSegmentView(
                        segment: ExteriorSegment(),
                        color: segmentColors[i % segmentColors.count],
                        note: notes[i % notes.count],
                        rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + additionalRotation
                    )
                    .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
                    .offset(x: circleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                            y: circleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
                }
                
                ForEach(0..<numberOfSegments, id: \.self) { i in
                              CircleSegmentView(
                                  segment: MedialSegment(),
                                  color: segmentColors[i % segmentColors.count],
                                  note: notes[i % notes.count],
                                  rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + additionalRotation
                              )
                              .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
                              .offset(x: medialCircleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                                      y: medialCircleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
                          }
                ForEach(0..<numberOfSegments, id: \.self) { i in
                              CircleSegmentView(
                                  segment: InteriorSegment(),
                                  color: segmentColors[i % segmentColors.count],
                                  note: notes[i % notes.count],
                                  rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + additionalRotation
                              )
                              .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
                              .offset(x: interiorCircleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                                      y: interiorCircleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
                          }
                
                Text("Test")
            }
        }
    }
}
#Preview {
        ContentView()
    }

