//
//  CircleSegmentVIew.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

import SwiftUI

struct CircleSegmentView<S: CircleSegment>: View {
    var segment: S
    var color: Color // Color for the segment
    var note: String // Note letter for the segment
    var rotationDegrees: Double // Rotation for alignment

    var body: some View {
        ZStack {
            segment
                .fill(color)
                .frame(width: 800, height: 1200) // Set a frame for the segment w: 440 h: 710
                .rotationEffect(.degrees(rotationDegrees)) // Rotate for alignment

            Text(note) // Display the note letter
                .foregroundColor(.white)
                .rotationEffect(.degrees(-rotationDegrees)) // Counter-rotate the text to keep it upright
        }
        .onTapGesture {
            print("You hit the \(color.description) key") // Handle the tap gesture
        }
    }
}
