//
//  ViewController.swift
//  TrueOrAction
//
//  Created by Хван Эдуард on 25.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let actionButton = UIButton()
    let trueButton = UIButton()
    var titleLabel = UILabel()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        titleLabel.frame = CGRect(x: 95, y: 100, width: 200, height: 100)
        titleLabel.text = "Правда или действие?"
        titleLabel.numberOfLines = 0
        titleLabel.layer.borderColor = UIColor.black.cgColor
        titleLabel.layer.borderWidth = 1
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(titleLabel)

        
       
        
        trueButton.layer.borderColor = UIColor.red.cgColor
        trueButton.layer.borderWidth = 1
        trueButton.layer.cornerRadius = 10
        trueButton.setTitle("Правда", for: .normal)
        trueButton.setTitleColor(.red, for: .normal)
        trueButton.frame = CGRect(x: 45, y: 400, width: 130, height: 120)
        
        view.addSubview(trueButton)
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.borderWidth = 1
        actionButton.layer.cornerRadius = 10
        actionButton.setTitle("Действие", for: .normal)
        actionButton.setTitleColor(.red, for: .normal)
        actionButton.frame = CGRect(x: 220, y: 400, width: 130, height: 120)
        view.addSubview(actionButton)

        
        actionButton.addTarget(self, action: #selector(addAction), for: .touchUpInside)
        trueButton.addTarget(self, action: #selector(addWord), for: .touchUpInside)
        

    }
    
    @objc func addAction(){
        titleLabel.text = Source.getInfo(type: .action)
    }
    
    @objc func addWord(){
        titleLabel.text = Source.getInfo(type: .word)
    }

    


}

