//
//  ContentView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/13/23.

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    let numberOfSegments = 12
    let additionalRotation: Double = 89

    // Computed properties for dynamic sizing
    var circleRadius: CGFloat {
        horizontalSizeClass == .regular ? 300 : 150  // iPad : iPhone
    }
    var medialCircleRadius: CGFloat {
        horizontalSizeClass == .regular ? 210 : 105
    }
    var interiorCircleRadius: CGFloat {
        horizontalSizeClass == .regular ? 130: 65
    }
    var fontSize: CGFloat {
        horizontalSizeClass == .regular ? 30 : 20
    }
    
    var frameWidth: CGFloat {
         horizontalSizeClass == .regular ? 1600 : 800 // iPad : iPhone
     }
     var frameHeight: CGFloat {
         horizontalSizeClass == .regular ? 2400 : 1200
     }

    var body: some View {
        ZStack {
            ForEach(0..<numberOfSegments, id: \.self) { i in
                ExteriorRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: circleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: exteriorSegmentColors,
                    notes: exteriorSegmentNotes,
                    fontSize: fontSize,
                    frameWidth: frameWidth,
                    frameHeight: frameHeight
                )
                
                MedialRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: medialCircleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: medialSegmentColors,
                    notes: medialSegmentNotes,
                    fontSize: fontSize - 2, // slightly smaller font for medial ring
                    frameWidth: frameWidth,
                    frameHeight: frameHeight
                )
                
                InteriorRingView(
                    numberOfSegments: numberOfSegments,
                    circleRadius: interiorCircleRadius,
                    rotationOffset: additionalRotation,
                    segmentColors: interiorSegmentColors,
                    notes: interiorSegmentNotes,
                    fontSize: fontSize - 11, // even smaller font for interior ring
                    frameWidth: frameWidth,
                    frameHeight: frameHeight
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
