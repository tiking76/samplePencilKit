//
//  UIKitModalViewController.swift
//  samplePencilKit
//
//  Created by tiking on 2021/04/05.
//

import UIKit
import PencilKit
import PanModal

class UIKitModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let canvas = PKCanvasView(frame: view.frame)
        canvas.drawingPolicy = .anyInput
        canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
        view.addSubview(canvas)
    }
}

extension UIKitModalViewController: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }

    var shortFormHeight: PanModalHeight {
        return .contentHeight(300)
    }

    var longFormHeight: PanModalHeight {
        return .contentHeight(300)
    }
    
    var cornerRadius: CGFloat {
        return 16.0
    }

    var backgroundAlpha: CGFloat {
        return 0.3
    }

    var showDragIndicator: Bool {
        return false
    }

    func shouldRespond(to panModalGestureRecognizer: UIPanGestureRecognizer) -> Bool {
        return false
    }
}
