//
//  ChartsViewController.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//

import UIKit

class ChartsViewController: UIViewController {

    
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
        }
        else
        {
            overrideUserInterfaceStyle = .light
        }
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
    }
    @objc func tap(sender: UITapGestureRecognizer)
    {
            view.endEditing(true)
    }
   
}
