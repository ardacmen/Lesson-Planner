//
//  AppSettingsViewController.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//

import UIKit

class AppSettingsViewController: UIViewController {

    
    // VALUES
    
    let mainPageViewController = MainPageViewController()
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var selectFontSizeLabel: UILabel!
    @IBOutlet weak var resetAllDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
   
    
    private func configure()
    {
    
        if UserDefaults.standard.bool(forKey: "darkMode") == true
        {
            darkModeSwitch.isOn = true
            overrideUserInterfaceStyle = .dark
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            self.navigationItem.rightBarButtonItem?.tintColor = .white
            self.navigationItem.leftBarButtonItem?.tintColor = .white
       
        }
        else
        {
            darkModeSwitch.isOn = false
            overrideUserInterfaceStyle = .light
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            self.navigationItem.rightBarButtonItem?.tintColor = .black
            self.navigationItem.leftBarButtonItem?.tintColor = .black
        }
        
    }
    

    
    @IBAction func darkModeSwitch(_ sender: Any) {
        
        if darkModeSwitch.isOn == true
        {
            UserDefaults.standard.set(true, forKey: "darkMode")
            configure()
        }
        else
        {
            UserDefaults.standard.set(false, forKey: "darkMode")
            configure()
        }
        
    }
    
}
