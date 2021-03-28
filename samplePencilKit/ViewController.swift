//
//  ViewController.swift
//  samplePencilKit
//
//  Created by tiking on 2021/03/28.
//

import UIKit

// PencilKit を使う
import PencilKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let canvas = PKCanvasView(frame: view.frame)
        view.addSubview(canvas)
        canvas.tool = PKInkingTool(.pen, width: 30)
    }
}

