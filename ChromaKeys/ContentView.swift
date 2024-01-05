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
  
  
  @State private var exteriorRotation: Double = 0
  @State private var medialRotation: Double = 0
  @State private var interiorRotation: Double = 0
  

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
        horizontalSizeClass == .regular ? 35 : 20
    }
    
    var frameWidth: CGFloat {
         horizontalSizeClass == .regular ? 1600 : 800 // iPad : iPhone
     }
     var frameHeight: CGFloat {
         horizontalSizeClass == .regular ? 2400 : 1200
     }
  
  var body: some View {
    ZStack {
      // Exterior Ring
      ExteriorRingView(
        numberOfSegments: numberOfSegments,
        circleRadius: circleRadius,
        rotationOffset: additionalRotation + exteriorRotation,
        segmentColors: exteriorSegmentColors, // Placeholder
        notes: exteriorSegmentNotes, // Placeholder
        fontSize: fontSize,
        frameWidth: frameWidth,
        frameHeight: frameHeight
      )
      .gesture(
        RotationGesture()
          .onChanged { angle in
            self.exteriorRotation += angle.degrees
          }
      )
      
      // Medial Ring
      MedialRingView(
        numberOfSegments: numberOfSegments,
        circleRadius: medialCircleRadius,
        rotationOffset: additionalRotation + medialRotation,
        segmentColors: medialSegmentColors, // Placeholder
        notes: medialSegmentNotes, // Placeholder
        fontSize: fontSize - 2,
        frameWidth: frameWidth,
        frameHeight: frameHeight
      )
      .gesture(
        RotationGesture()
          .onChanged { angle in
            self.medialRotation += angle.degrees
          }
      )
      
      // Interior Ring
      InteriorRingView(
        numberOfSegments: numberOfSegments,
        circleRadius: interiorCircleRadius,
        rotationOffset: additionalRotation + interiorRotation,
        segmentColors: interiorSegmentColors, // Placeholder
        notes: interiorSegmentNotes, // Placeholder
        fontSize: fontSize - 11,
        frameWidth: frameWidth,
        frameHeight: frameHeight
      )
      .gesture(
        RotationGesture()
          .onChanged { angle in
            self.interiorRotation += angle.degrees
          }
      )
      
      // Translucent Overlay (remains stationary)
      translucentOverlay() // Placeholder
        .fill(Color.gray.opacity(0.59))
        .frame(width: frameWidth, height: frameHeight)
        .scaleEffect(x: 1.0, y: 0.93)
        .rotationEffect(Angle(degrees: -1))
        .offset(y: 50)
    }
  }
}

#Preview {
    ContentView()
}
