//
//  ViewController.swift
//  HomeWork8
//
//  Created by Алексей Полин on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    //Создаем массив картинок и перемменную индекса
    let picArray = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9"), UIImage(named: "10")]
    
    var currentImageIndex = 0
    //определяем и настраиваем контроллеры
    @IBOutlet weak var pictureIV: UIImageView!
    
    @IBAction func backB(_ sender: Any) {
        currentImageIndex = currentImageIndex == 0 ? picArray.count - 1 : currentImageIndex - 1
        pictureIV.image = picArray[currentImageIndex]

    }
    @IBAction func nextB(_ sender: Any) {
        currentImageIndex = currentImageIndex == 9 ? 0 : currentImageIndex + 1
        pictureIV.image = picArray[currentImageIndex]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureIV.image = picArray[0]
    }


}

