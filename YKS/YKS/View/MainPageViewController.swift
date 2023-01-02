//
//  MainPageViewController.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//

import UIKit

class MainPageViewController: UIViewController {

    let darkMode = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configure()
    }
    
    private func configure()
    {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
         if darkMode.bool(forKey: "darkMode") == true
         {
            overrideUserInterfaceStyle = .dark
             self.navigationItem.rightBarButtonItem?.tintColor = .white
             self.navigationItem.leftBarButtonItem?.tintColor = .white
             self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
         }
         else
         {
            overrideUserInterfaceStyle = .light
             self.navigationItem.rightBarButtonItem?.tintColor = .black
             self.navigationItem.leftBarButtonItem?.tintColor = .black
             self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
         }
    }
        
    
    @objc func tap(sender: UITapGestureRecognizer)
    {
            view.endEditing(true)
    }


}
