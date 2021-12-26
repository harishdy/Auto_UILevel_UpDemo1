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
        let image = makeImageView(named: "2387027")
        let nameLabel = makeLabel(withText:"Title")
        let button = makeButon(withText: "Get Started")
        view.addSubview(image)
        view.addSubview(nameLabel)
        view.addSubview(button)
        
        // imageView by themselves have intrinsic size\\
        
//        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 5).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
//        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        image.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 200).isActive = true
//        image.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 90).isActive = true
//
        nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        button.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 300).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
/*          ****label Content Hugging & compression Resistance****
        let textField = makeTextField(withPlaceHolderText: "Enter Name")
        view.addSubview(textField)
 
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
        view.contentMode = .scaleToFill
        view.image = UIImage(named: named)
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
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

