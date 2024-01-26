//
//  ViewController.swift
//  HW_2
//
//  Created by Дарья Кобелева on 26.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let views = [redView, yellowView, greenView]
        for view in views {
            view?.alpha = 0.3
            view?.layer.cornerRadius = 50
        }
        
        changeColorButton.layer.cornerRadius = 12
        changeColorButton.setTitle("START", for: .normal)
    }
    
    @IBAction func colorChangeButtonTapped() {
        changeColorButton.setTitle("NEXT", for: .normal)
        switchTrafficLight()
    }
    
    private func switchTrafficLight() {
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

