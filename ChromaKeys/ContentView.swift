//
//  ContentView.swift
//  ChromaKeys
//
//  Created by Brandon Armstrong on 12/13/23.


import SwiftUI

struct ExteriorSegmentView: View {
    var color: Color // Color for the segment
    var note: String // Note letter for the segment
    var rotationDegrees: Double // Rotation for alignment

    var body: some View {
        ZStack {
            ExteriorSegment()
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

struct ContentView: View {
    let numberOfSegments = 12
    let circleRadius: CGFloat = 150  // 82
    let additionalRotation: Double = 89
    let notes = ["C", "G", "D", "A", "E", "B", "F#", "Db", "Ab", "Eb", "Bb", "F"] // Example notes
    let segmentColors: [Color] = [.red, .blue, .green, .orange, .purple, .pink, .yellow, .gray, .cyan, .mint, .indigo, .teal]

    var body: some View {
        ZStack {
            ForEach(0..<numberOfSegments, id: \.self) { i in
                ExteriorSegmentView(
                    color: segmentColors[i % segmentColors.count],
                    note: notes[i % notes.count],
                    rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + additionalRotation
                )
                .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
                .offset(x: circleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                        y: circleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
            }
        }
    }
}

#Preview {
    ContentView()
}

/*
 
 import SwiftUI

 struct SegmentView: View {
     var color: Color // Color for the segment
     var note: String // Note letter for the segment
     var rotationDegrees: Double // Rotation for alignment

     var body: some View {
         ZStack {
             ExteriorSegment()
                 .fill(color)
                 .frame(width: 440, height: 710) // Set a frame for the segment
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

 struct ContentView: View {
     let numberOfSegments = 12
     let circleRadius: CGFloat = 82
     let additionalRotation: Double = 89
     let notes = ["C", "G", "D", "A", "E", "B", "F#", "Db", "Ab", "Eb", "Bb", "F"] // Example notes
     let segmentColors: [Color] = [.red, .blue, .green, .orange, .purple, .pink, .yellow, .gray, .cyan, .mint, .indigo, .teal]

     var body: some View {
         ZStack {
             ForEach(0..<numberOfSegments, id: \.self) { i in
                 SegmentView(
                     color: segmentColors[i % segmentColors.count],
                     note: notes[i % notes.count],
                     rotationDegrees: Double(i) / Double(numberOfSegments) * 180 + additionalRotation
                 )
                 .rotationEffect(.degrees(Double(i) / Double(numberOfSegments) * 180))
                 .offset(x: circleRadius * cos(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi),
                         y: circleRadius * sin(CGFloat(i) / CGFloat(numberOfSegments) * 2 * .pi))
             }
         }
     }
 }
 
 
 
 
 */




