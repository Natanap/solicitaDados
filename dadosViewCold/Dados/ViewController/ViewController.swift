//
//  ViewController.swift
//  dadosViewCold
//
//  Created by Natanael Alves Pereira on 28/02/22.
//

import UIKit

class ViewController: UIViewController {

    var appScrenn: AppScrenn?
    
    override func loadView() {
        self.appScrenn = AppScrenn()
        self.view = self.appScrenn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

}

