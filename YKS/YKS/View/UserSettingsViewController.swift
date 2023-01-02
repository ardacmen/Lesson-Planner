//
//  UserSettingsViewController.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//

import UIKit

class UserSettingsViewController: UIViewController {
    
    
    let mainPageViewController = MainPageViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configure()
    }

    private func configure()
    {
        if mainPageViewController.darkMode.bool(forKey: "darkMode") == true
        {
            overrideUserInterfaceStyle = .dark
            self.navigationItem.rightBarButtonItem?.tintColor = .white
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
        else
        {
            overrideUserInterfaceStyle = .light
            self.navigationItem.rightBarButtonItem?.tintColor = .black
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        }
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
    }
    
    @objc func tap(sender: UITapGestureRecognizer)
    {
            view.endEditing(true)
    }
   

}
