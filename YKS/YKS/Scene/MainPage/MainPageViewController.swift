//
//  MainPageViewController.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//

import UIKit

class MainPageViewController: UIViewController {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var trialImageView: UIImageView!
    @IBOutlet weak var entryImageView: UIImageView!
    @IBOutlet weak var trialButton: UIButton!
    @IBOutlet weak var entryButton: UIButton!
    @IBOutlet weak var dailyQuestionFocus: UILabel!
    @IBOutlet weak var weeklyQuestionFocus: UILabel!
    
    let darkMode = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
    private func configure()
    {
        if UserDefaults.standard.bool(forKey: "darkMode") == true
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
        
        trialImageView.layer.cornerRadius = 20
        entryImageView.layer.cornerRadius = 20
    }
        



}
