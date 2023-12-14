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
                
                // Exterior ring of segments
                ExteriorRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: circleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: exteriorSegmentColors,
                    notes: notes
                    )
                
                // Medial ring of segments
                MedialRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: medialCircleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: medialSegmentColors,
                    notes: notes)
                

                
                // Interior ring of segments
                InteriorRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: interiorCircleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: interiorSegmentColors,
                    notes: notes
                    )
                
                Text("Test")
            }
        }
    }
}
#Preview {
        ContentView()
    }

