//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    var questionNum = 0
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choice1Selected(_ sender: UIButton) {
        getNextStoryNum(choice: "Choice1")
    }
    
    @IBAction func choice2Selected(_ sender: UIButton) {
        getNextStoryNum(choice: "Choice2")
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.story[questionNum].title
        choice1Button.setTitle(storyBrain.story[questionNum].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[questionNum].choice2, for: .normal)
        
        //choice2Button.setTitle(storyBrain.getStoryChoice2(arrayNum: questionNum), for: .normal)
        //the above does this essentially
        //less code
    }
    
    func getNextStoryNum(choice: String){
        
        if choice == "Choice1" {
            questionNum = storyBrain.story[questionNum].choice1Destination
        } else if choice == "Choice2"{
            questionNum = storyBrain.story[questionNum].choice2Destination
        }
        updateUI()
        //How do I pass in the array's story struct attribute rather?
    }
}
