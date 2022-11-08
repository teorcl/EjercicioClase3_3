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
        static let win = "BINGO!"
    }
    
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var hideButton: UIButton!
    
    var randomNumber = Const.initialNumber
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        play()
    }
    
    func showNumberRandom(){
        randomNumberLabel.text = "\(randomNumber)"
    }
    
    func getRandomNumer(){
        //Cambiar el valor de randomNumber
        randomNumber = Int.random(in: Const.initialNumber...Const.finalNumber)
    }
    
    func updateButton(){
        if randomNumber == Const.winnerNumber{
            hideButton.setTitle(Const.win, for: .normal)
            hideButton.setTitleColor(UIColor.blue, for: .normal)
            hideButton.isEnabled = false
        }
    }
    
    func play(){
        getRandomNumer()
        updateButton()
        showNumberRandom()
    }
        
}

