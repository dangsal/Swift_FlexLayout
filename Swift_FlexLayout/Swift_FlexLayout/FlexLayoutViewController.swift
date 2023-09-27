//
//  FlexLayoutViewController.swift
//  Swift_FlexLayout
//
//  Created by 이성호 on 2023/09/27.
//

import UIKit

import FlexLayout

final class FlexLayoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
