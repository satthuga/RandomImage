//
//  ViewController.swift
//  RandomImage
//
//  Created by Apple on 04/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "asean")
    }

    var imagesArray : [String] = ["vietnam", "thailand", "laos", "cambodia", "myanmar", "malaysia", "indonesia", "singapore", "philippines", "brunei", "asean"]
    
    var checkDub = ""
    var myImage = ""
    
    func checkImage() {
        guard let randomImage = imagesArray.randomElement() else {
            return
        }
    myImage = randomImage
        
    if checkDub == myImage {
        checkImage()
        return
        }
    }
    
    @IBAction func onPress(_ sender: Any) {
        
        checkImage()
        imageView.image = UIImage(named: myImage)
        checkDub = myImage
    }
    
}

