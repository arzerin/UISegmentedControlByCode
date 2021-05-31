//
//  ViewController.swift
//  UISegmentedControlByCode
//
//  Created by Arifur Rahman ZERIN on 5/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    //@IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSuitSegmentControl()
    }
    
    func createSuitSegmentControl() {
        let items = ["🖤", "🌸", "❤️", "🚗"]
        
        let segmentedControl = UISegmentedControl(items: items)
        
        segmentedControl.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        
        segmentedControl.frame = CGRect(x: 10, y: 250, width: (self.view.frame.width - 20), height: 50)
        
        segmentedControl.selectedSegmentIndex = 2
        
       segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            segmentedControl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            //segmentedControl.heightAnchor.constraint(equalToConstant: 100),
            //segmentedControl.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            segmentedControl.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 75)
        ])
        
    }
    
    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        
        print("Hello value Changed \(segmentedControl.selectedSegmentIndex)")
        
       switch (segmentedControl.selectedSegmentIndex) {
       
       case 0 :
           cardImageView.image = UIImage(named: "0")
           print("0")
       case 1 :
           cardImageView.image = UIImage(named: "1")
           print("1")
       case 2 :
           cardImageView.image = UIImage(named: "2")
           print("1")
       case 3 :
           cardImageView.image = UIImage(named: "3")
           print("1")
       default:
           print("Default")
       
       
       }
    }
    
   
    
   


}

