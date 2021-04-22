//
//  UIKitModalViewController.swift
//  samplePencilKit
//
//  Created by tiking on 2021/04/05.
//

import UIKit
import PencilKit
import SPStorkController

class UIKitModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let canvas = PKCanvasView(frame: view.frame)
        canvas.drawingPolicy = .anyInput
        canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
        view.addSubview(canvas)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle(rawValue: 0)!
        }
}


