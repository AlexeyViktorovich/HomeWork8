//
//  ThirdViewController.swift
//  HomeWork8
//
//  Created by Алексей Полин on 18.08.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var changePanelSC: UISegmentedControl!
    @IBAction func tuchSegment(_ sender: Any) {
        switch changePanelSC.selectedSegmentIndex {
        case 0:
            greenView.isHidden = false
            purpleView.isHidden = true
            blueView.isHidden = true
        case 1:
            blueView.isHidden = false
            purpleView.isHidden = true
            greenView.isHidden = true
        case 2:
            purpleView.isHidden = false
            blueView.isHidden = true
            greenView.isHidden = true
        default:
            purpleView.isHidden = true
            blueView.isHidden = true
            greenView.isHidden = true
        }
    }
    
    let greenView = UIView()
    let blueView = UIView()
    let purpleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //first
        greenView.frame = CGRect(x: view.frame.midX - 150, y: view.frame.midY - 300, width: 300, height: 600)
        greenView.backgroundColor = UIColor.green
        let textTF = UITextField(frame: CGRect(x: 10, y: 20, width: 100, height: 20))
        let textTF2 = UITextField(frame: CGRect(x: 120, y: 60, width: 100, height: 20))
        textTF.placeholder = "text 1"
        textTF.backgroundColor = UIColor.white
        textTF2.placeholder = "text 2"
        textTF2.backgroundColor = UIColor.white
        greenView.addSubview(textTF)
        greenView.addSubview(textTF2)
        view.addSubview(greenView)
        
        //second
        blueView.frame = CGRect(x: view.frame.midX - 150, y: view.frame.midY - 300, width: 300, height: 600)
        blueView.backgroundColor = UIColor.blue
        let oneButton = UIButton(frame: CGRect(x: 10, y: 20, width: 100, height: 20))
        let twoButton = UIButton(frame: CGRect(x: 120, y: 60, width: 100, height: 20))
        oneButton.backgroundColor = UIColor.systemGray
        oneButton.setTitle("Button", for: .normal)
        oneButton.setTitleColor(UIColor.black, for: .normal)
        oneButton.showsTouchWhenHighlighted = true
        twoButton.backgroundColor = UIColor.systemGray
        twoButton.setTitle("Button2", for: .normal)
        twoButton.setTitleColor(UIColor.black, for: .normal)
        twoButton.showsTouchWhenHighlighted = true
        blueView.addSubview(oneButton)
        blueView.addSubview(twoButton)
        view.addSubview(blueView)
        
        //third
        purpleView.frame = CGRect(x: view.frame.midX - 150, y: view.frame.midY - 300, width: 300, height: 600)
        purpleView.backgroundColor = UIColor.purple
        
        let oneImage = UIImageView(frame: CGRect(x: 10, y: 20, width: 130, height: 250))
        let twoImage = UIImageView(frame: CGRect(x: 145, y: 20, width: 130, height: 250))
        oneImage.image = UIImage(named: "11")
        oneImage.clipsToBounds = true
        twoImage.image = UIImage(named: "12")
        twoImage.clipsToBounds = true
        purpleView.addSubview(oneImage)
        purpleView.addSubview(twoImage)
        view.addSubview(purpleView)
        
    }
}
