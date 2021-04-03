//
//  HomeViewController.swift
//  Qual a idade do seu cão?
//
//  Created by Yago Moura on 02/04/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let home: HomeView = HomeView()
    
   
   
        override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor = #colorLiteral(red: 0.01670318842, green: 0.9751387239, blue: 0.9588883519, alpha: 1)
            view.addSubview(home)
            
                
            home.snp.makeConstraints{ make in
                make.edges.equalToSuperview()
                
            }
         
        // Do any additional setup after loading the view.
    }
    



}

