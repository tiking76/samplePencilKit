//
//  Pencil.swift
//  samplePencilKit
//
//  Created by tiking on 2021/04/01.
//

import SwiftUI
import PencilKit

struct NewPaint {
    @Binding var canvasView: PKCanvasView
}

extension NewPaint: UIViewRepresentable {
    
    typealias UIViewType = PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 4.0)
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}
