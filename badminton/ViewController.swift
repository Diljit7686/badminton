//
//  ViewController.swift
//  badminton
//
//  Created by Diljit Singh on 2021-06-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    
    
    var num = 0
    var num2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func teamAButton(_ sender: UIButton) {
        
        num += 1
        
        labelA.text = String(num)
        
        if(num == 21 && num2 < 20 || num > 20 && num > num2 + 1)
        {
            print("team A wins!!")
            labelA.text = String("team A wins")
            labelB.text = String("team A wins")
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                   //call any function
                self.reset()
               }
          
        }
        else if( num == 30)
        {
            print("team A winss!!")
            labelA.text = String("team A wins")
            labelB.text = String("team A wins")
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                   //call any function
                self.reset()
               }
        }
        
        
    }
    
    @IBAction func teamBButton(_ sender: Any) {
        
        
        num2 += 1
        
        labelB.text = String(num2)
        
        if(num2 == 21 && num < 20 || num2 > 20 && num2 > num + 1)
        {
            print("team B wins!!")
            labelA.text = String("team B wins")
            labelB.text = String("team B wins")
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                   //call any function
                self.reset()
               }
        }
        else if( num2 == 30)
        {
            print("team B winss!!")
            labelA.text = String("team B wins")
            labelB.text = String("team B wins")
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                   //call any function
                self.reset()
               }
        }
    }
    @IBAction func resetBtn(_ sender: UIButton) {
        reset()
    }
    func reset(){
        num = 0
        num2 = 0
         
        labelA.text = String("0")
        labelB.text = String("0")
    }
    
}

