//
//  ViewController.swift
//  samplePencilKit
//
//  Created by tiking on 2021/03/28.
//

import UIKit
import SPStorkController

class ViewController: UIViewController, SPStorkControllerDelegate {
    
    let button: UIButton = {
            let button = UIButton()
            button.setTitle("show！", for: .normal)
            button.titleLabel?.font = .boldSystemFont(ofSize: 20)
            button.layer.cornerRadius = 20
            button.backgroundColor = .orange
            return button
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            button.center = view.center
            button.addTarget(self, action: #selector(presentModal(_:)), for: .touchUpInside)
            view.addSubview(button)
        }

        @objc func presentModal(_ sender: UIButton) {
            let viewController = UIKitModalViewController()
            viewController.preferredContentSize = CGSize(width: 256, height: 256)
            let transitionDelegate = SPStorkTransitioningDelegate()
            transitionDelegate.storkDelegate = self
            transitionDelegate.customHeight = 300
            transitionDelegate.swipeToDismissEnabled = false
            transitionDelegate.showIndicator = false
            viewController.transitioningDelegate = transitionDelegate
            viewController.modalPresentationStyle = .custom
            self.present(viewController, animated: true, completion: nil)
        }
}
