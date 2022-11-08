//
//  TaskThreeViewController.swift
//  EjercicioClase3_3
//
//  Created by TEO on 7/11/22.
//

import UIKit

class TaskThreeViewController: UIViewController {
    
    struct Const{
        static let initialNumber = 1
        static let finalNumber = 10
        static let winnerNumber = 7
    }
    
   
    @IBOutlet weak var numberRandomLabel: UILabel!
    @IBOutlet weak var hideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        let number = Int.random(in: Const.initialNumber...Const.finalNumber)
        if number == Const.winnerNumber{
            hideButton.setTitle("BINGO", for: .normal)
            hideButton.setTitleColor(UIColor.blue, for: .normal)
            hideButton.isEnabled = false
        }
        numberRandomLabel.text = "\(number)"
    }
        
}

//let number = Int.random(in: initialNumber...finalNumber)
