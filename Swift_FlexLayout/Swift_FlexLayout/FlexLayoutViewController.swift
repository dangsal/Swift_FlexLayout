//
//  FlexLayoutViewController.swift
//  Swift_FlexLayout
//
//  Created by 이성호 on 2023/09/27.
//

import UIKit

import FlexLayout
import PinLayout

final class FlexLayoutViewController: UIViewController {
    
    private let flexView: UIView = UIView()
    
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "label1"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "label2"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "label3"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        flexView.pin.all(view.pin.safeArea)
        flexView.flex.layout()
    }
    
    private func setupLayout() {
        self.view.addSubview(self.flexView)
        self.flexView.flex.define {
            $0.addItem(self.label1)
            $0.addItem(self.label2)
            $0.addItem(self.label3)
        }
     
        
    }
}

#if DEBUG
import SwiftUI

struct PreView: PreviewProvider {
    static var previews: some View {
        let viewController = FlexLayoutViewController()
        viewController.toPreview()
    }
}
#endif

#if DEBUG
import SwiftUI
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
            let viewController: UIViewController

            func makeUIViewController(context: Context) -> UIViewController {
                return viewController
            }

            func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            }
        }

        func toPreview() -> some View {
            Preview(viewController: self)
        }
}
#endif
