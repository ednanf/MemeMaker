//
//  ViewController.swift
//  MemeMaker
//
//  Created by Ednan R. Frizzera Filho on 29/04/23.
//

import UIKit

class ViewController: UIViewController {
// MARK: - Properties
    let topChoices: [CaptionOption] = [CaptionOption(emoji: "👨🏻‍💻", caption: "Post a meme"), CaptionOption(emoji: "👀", caption: "Looks at girl"), CaptionOption(emoji: "🫴🏻", caption: "Helps someone")]
    let bottomChoices: [CaptionOption] = [CaptionOption(emoji: "😳", caption: "Pervert"), CaptionOption(emoji: "👨🏻‍⚖️", caption: "Lawsuit"), CaptionOption(emoji: "🤡", caption: "Weirdo")]
    
// MARK: - IBOutlets
    @IBOutlet var topSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomeCaptionLabel: UILabel!
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegmentedControl.removeAllSegments()
        topSegmentedControlConfig()
        topSegmentedControlPosition()
        
        bottomSegmentedControl.removeAllSegments()
        bottomSegmentedControlConfig()
        bottomSegmentedControlPosition()
    }

// MARK: - IBActions

    @IBAction func segmentedControls(_ sender: Any) {
        topSegmentedControlPosition()
        bottomSegmentedControlPosition()
    }
    
// MARK: - Functions
    
    func topSegmentedControlConfig() {
        for button in topChoices {
            topSegmentedControl.insertSegment(withTitle: button.emoji, at: topChoices.count, animated: false)
            
            topSegmentedControl.selectedSegmentIndex = 0
        }
    }
    
    func bottomSegmentedControlConfig() {
        for button in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: button.emoji, at: bottomChoices.count, animated: false)
            
            bottomSegmentedControl.selectedSegmentIndex = 0
        }
    }
    
    func topSegmentedControlPosition() {
        let position = topSegmentedControl.selectedSegmentIndex
        let choice = topChoices[position]
        
        topCaptionLabel.text = choice.caption
        }
    
    func bottomSegmentedControlPosition() {
        let position = bottomSegmentedControl.selectedSegmentIndex
        let choice = bottomChoices[position]
        
        bottomeCaptionLabel.text = choice.caption
    }
    
}


