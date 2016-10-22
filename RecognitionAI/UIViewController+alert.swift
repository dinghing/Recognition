//
//  UIViewController+alert.swift
//  RecognitionAI
//
//  Created by dinghing on 9/30/16.
//  Copyright © 2016 dinghing.sample.com. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String, handler: ((UIAlertAction) -> Swift.Void)? = nil) {
        DispatchQueue.main.async { [unowned self] in
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: handler))
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
