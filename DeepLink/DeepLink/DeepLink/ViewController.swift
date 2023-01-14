//
//  ViewController.swift
//  DeepLink
//
//  Created by Iphone XR on 24/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        NextBtn()
    }
    func NextBtn(){
        let myAddButton = UIButton()
        myAddButton.setTitle("Next", for: .normal)
        myAddButton.setTitleColor(UIColor.blue, for: [])
        myAddButton.addTarget(self,action: #selector(NextbuttonAction),for: .touchUpInside)
        myAddButton.backgroundColor = UIColor.gray
        myAddButton.center = view.center
        view.addSubview(myAddButton)
        //Add Constraint to Button
        myAddButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: myAddButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: myAddButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 50.0).isActive = true
        NSLayoutConstraint(item: myAddButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -50.0).isActive = true
    }
    @objc func NextbuttonAction(_ sender: UIButton){
        
        let secVC = ProductdetailsViewController()
        
        
        self.navigationController?.pushViewController(secVC, animated: true)
    }
}

