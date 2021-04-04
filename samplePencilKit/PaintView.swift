//
//  PaintView.swift
//  samplePencilKit
//
//  Created by tiking on 2021/04/01.
//

import SwiftUI
import PencilKit

struct PaintView: View {
    @State private var canvasView = PKCanvasView()
    var body: some View {
        NewPaint(canvasView: $canvasView)
    }
}

struct PaintView_Previews: PreviewProvider {
    static var previews: some View {
        PaintView()
    }
}
