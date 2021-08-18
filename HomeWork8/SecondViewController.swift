//
//  SecondViewController.swift
//  HomeWork8
//
//  Created by Алексей Полин on 18.08.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let thingsArray = [UIImage(named: "11"), UIImage(named: "12"), UIImage(named: "13"), UIImage(named: "14"), UIImage(named: "15")]
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var positionNewViewY = 100
        var positionNewViewX = 20
        
        for (index, _) in thingsArray.enumerated() {
            
            let newView = UIView(frame: CGRect(x: positionNewViewX, y: positionNewViewY, width: 170, height: 345))
            
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 170, height: 300))
            
            let label = UILabel(frame: CGRect(x: 0, y: 315, width: 170, height: 30))
            label.backgroundColor = UIColor.systemGray
            label.text = "price"
            
            if index % 2 != 0{
                positionNewViewX = 20
                positionNewViewY += 365
                imageView.image = thingsArray[index]
            } else if index % 2 == 0 {
                positionNewViewX = 220
                imageView.image = thingsArray[index]

            }
                        
            newView.addSubview(imageView)
            newView.addSubview(label)
            
            view.addSubview(newView)
        }
        
    }

}
