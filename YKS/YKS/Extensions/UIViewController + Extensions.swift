//
//  UIViewController + Extensions.swift
//  YKS
//
//  Created by Arda Çimen on 7.01.2023.
//

import Foundation
import UIKit.UIViewController

extension UIViewController {

    func makeAlert(titleInput:String, messageInput:String) {
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                        alert.addAction(okButton)
                        self.present(alert, animated: true, completion: nil)
        }
  }

