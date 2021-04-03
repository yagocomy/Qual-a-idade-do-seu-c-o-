//
//  HomeView.swift
//  Qual a idade do seu cão?
//
//  Created by Yago Moura on 03/04/21.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var dogImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "cachorro"))
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    lazy var doglabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.01670318842, green: 0.9751387239, blue: 0.9588883519, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Digite a idade de seu cachorro, para \n descobrir a idade em anos humanos."
        
        return label
    }()
    
    lazy var oldextField: UITextField = {
        let text = UITextField()
        text.keyboardType = .numberPad
        text.layer.cornerRadius = 8
        text.layer.borderWidth = 1.5
        text.layer.borderColor = UIColor.black.cgColor
        text.textAlignment = .center
        text.textColor = .black
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        text.placeholder = "Digite a idade"
        
        return text
    }()
    
    lazy var calculateButton: UIButton = {
        let dogButton = UIButton.init(type: .roundedRect)
        dogButton.layer.cornerRadius = 5
        dogButton.setTitle("Descobrir a idade", for: .normal)
        dogButton.tintColor = .black
        dogButton.backgroundColor = #colorLiteral(red: 0.01670318842, green: 0.9440398586, blue: 0.9588883519, alpha: 1)
        dogButton.addTarget(self, action: #selector(showAge), for: .touchUpInside)
        
        return  dogButton
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.01670318842, green: 0.9751387239, blue: 0.9588883519, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "A idade do cachorro em anos humanos é: "
        
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        resultLabel.isHidden = true
        self.addSubview(dogImage)
        self.addSubview(doglabel)
        self.addSubview(oldextField)
        self.addSubview(calculateButton)
        self.addSubview(resultLabel)
        
        dogImage.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)

        }

        doglabel.snp.makeConstraints{ make in
            make.top.equalTo(dogImage.snp.bottom).offset(20)
            make.left.equalTo(30)
            make.right.equalTo(-30)
        }
        
        oldextField.snp.makeConstraints{ make in
            make.top.equalTo(doglabel.snp.bottom).offset(20)
            make.left.equalTo(30)
            make.right.equalTo(-30)
        }
        calculateButton.snp.makeConstraints{ make in
            make.top.equalTo(oldextField.snp.bottom).offset(20)
            make.left.equalTo(30)
            make.right.equalTo(-30)
        }
        resultLabel.snp.makeConstraints{ make in
            make.top.equalTo(calculateButton.snp.bottom).offset(20)
            make.left.equalTo(30)
            make.right.equalTo(-30)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Do any additional setup after loading the view.
    
    func insertAge(){
        
    }
    
    @objc func showAge (_ sender: Any) {
     
        let idade = Int(oldextField.text!)! * 7
        resultLabel.text = "A idade do seu cachorro é:  " + String(idade)
        resultLabel.isHidden = false 
        
    }
}

