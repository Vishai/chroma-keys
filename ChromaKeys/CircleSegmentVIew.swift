//
//  CircleSegmentVIew.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/14/23.
//

import SwiftUI

//The sizing of the frame for this is great but it's too small for ipad.

struct CircleSegmentView<S: CircleSegment>: View {
    var segment: S
    var color: Color // Color for the segment
    var note: String // Note letter for the segment
    var rotationDegrees: Double // Rotation for alignment
    var fontSize: CGFloat
    var frameWidth: CGFloat
    var frameHeight: CGFloat
    
    var body: some View {
        ZStack {
            segment
                .fill(color)
                .frame(width: frameWidth, height: frameHeight) // Set a frame for the segment w: 800 h: 1200 optimal for iphone
                .rotationEffect(.degrees(rotationDegrees)) // Rotate for alignment

            Text(note) // Display the note letter
                .foregroundColor(.black)
                .rotationEffect(.degrees(-rotationDegrees + 90)) // Counter-rotate the text to keep it upright
                .font(.custom("MyriadPro-Regular", size: fontSize))
        }
        .onTapGesture {
            print("You hit the \(note) note") // Handle the tap gesture
        }
    }
}
