//
//  ViewController.swift
//  Auto_UILevel_UpDemo1
//
//  Created by Harish on 22/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }

    func setupView(){
        let nameLabel = makeLabel(withText:"Name")
        let textField = makeTextField(withPlaceHolderText: "Enter Name")
        view.addSubview(nameLabel)
        view.addSubview(textField)
/*          ****label Content Hugging & compression Resistance****
 
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        
        textField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8).isActive = true
        textField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)*/
        
    }
    func makeLabel(withText text:String)->UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    }
    func makeTextField(withPlaceHolderText text:String)-> UITextField{
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .lightGray
        
        return textField
    }
    public func makeImageView(named: String)-> UIImageView{
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: named)
        return view
    }
    
    public func makeButon(withText text:String)->UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        return button
    }
}

