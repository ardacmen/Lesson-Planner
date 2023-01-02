//
//  AppSettingsViewModel.swift
//  YKS
//
//  Created by Arda Çimen on 2.01.2023.
//


import UIKit.UIApplication

final class AppSettingsViewModel
{
    func sendFeedBack()
    {
        let url = URL(string: "http://www.hypersuperprojects.com/contact/")!
               UIApplication.shared.open(url)
    }
    
    
}
