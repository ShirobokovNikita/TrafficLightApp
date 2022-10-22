//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Nikita Shirobokov on 18.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonLabel: UIButton!
    @IBOutlet var greenOutline: UIView!
    @IBOutlet var yellowOutline: UIView!
    @IBOutlet var redOutline: UIView!
    
    let dark: CGFloat = 0.3
    let light: CGFloat = 1
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenOutline.layer.cornerRadius = greenOutline.frame.width / 2
        greenOutline.alpha = dark
        yellowOutline.layer.cornerRadius = greenOutline.frame.width / 2
        yellowOutline.alpha = dark
        redOutline.layer.cornerRadius = greenOutline.frame.width / 2
        redOutline.alpha = dark
        buttonLabel.setTitle("Старт", for: .normal)
    }
    
    @IBAction func buttonColor(_ sender: Any) {
        
        buttonLabel.setTitle("Поменять цвет", for: .normal)
        
        switch count {
        case 0:
            count = 1
            redOutline.alpha = light
            greenOutline.alpha = dark
        case 1:
            count = 2
            redOutline.alpha = dark
            yellowOutline.alpha = light
        case 2:
            count = 0
            yellowOutline.alpha = dark
            greenOutline.alpha = light
        default:
            break
            
        }
    }
}

