//
//  ModalViewController.swift
//  samplePencilKit
//
//  Created by tiking on 2021/04/04.
//

import SwiftUI
import PanModal

class ModalViewController: UIViewController {
    
   private let vc: UIHostingController = UIHostingController(rootView: PaintView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
        setupPaintView()
    }
    
    private func setupPaintView() {
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
                vc.view.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
                vc.view.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
                vc.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}

extension ModalViewController: PanModalPresentable {
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
