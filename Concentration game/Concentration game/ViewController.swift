//
//  ViewController.swift
//  Concentration game
//
//  Created by student on 19/01/19.
//  Copyright © 2019 student. All rights reserved.
//

//not necc for having diff actions for every buttons
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var flipCount: UILabel!
    var count=0{
        didSet{
            flipCount.text="Flips: \(count)"
        }
    }

    
    @IBOutlet var cardButtons: [UIButton]!//array of card buttons
    
    var emojiChoices = ["🎃","👻","🎃","👻"]//array of all the emojis
    

    
    @IBAction func touchCard(_ sender: UIButton) {
       // flipCard(withEmoji: "👻",on: sender)
        count = count + 1
        if let cardNumber = cardButtons.index(of : sender)
        {
            flipCard(withEmoji : emojiChoices[cardNumber] , on:sender)
        }
        //above code finds the index of button which is pressed
        else{
            print("error")
        }
        
        
    }
    
    
   
        func flipCard(withEmoji emoji:String ,on button:UIButton)
    {
        if button.currentTitle == emoji{
            button.setTitle("",for:UIControlState.normal)//tells that it is a normal button
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
        else{
            button.setTitle(emoji,for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    

}

