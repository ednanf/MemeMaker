//
//  ViewController.swift
//  MemeMaker
//
//  Created by Ednan R. Frizzera Filho on 29/04/23.
//

import UIKit

class ViewController: UIViewController {
// MARK: - Properties
    let topChoices = [CaptionOption(emoji: "👨🏻‍💻", caption: "Post a meme"), CaptionOption(emoji: "👀", caption: "Looks at girl"), CaptionOption(emoji: "🫴🏻", caption: "Helps someone")]
    // The array has to have each property from the struct CaptionOption. If the property was an optional (let emoji: String?), they could be ommited. Furthermore, it could have a default value in case the value was ommited in the array. If .emoji was (let emoji: String? = "hello") and I ommited the emoji value in an index, the word "hello" would appear instead.
    let bottomChoices = [CaptionOption(emoji: "😳", caption: "Pervert"), CaptionOption(emoji: "👨🏻‍⚖️", caption: "Lawsuit"), CaptionOption(emoji: "🤡", caption: "Weirdo")]
    
// MARK: - IBOutlets
    @IBOutlet var topSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomeCaptionLabel: UILabel!
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegmentedControl.removeAllSegments() // This removes the placeholder buttons so I can customize my own.
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
            // I called each index "button" and called for the .emoji property.
            // I used topChoices.count to define the number of buttons the control would have.
            // Animation is not needed, as this function only loads with viewDidLoad().
            topSegmentedControl.selectedSegmentIndex = 0
            // This is necessary since I used topSegmentedControl.removeAllSegments(). Without it, the app would start without any selection.
        }
    }
    
    
    func bottomSegmentedControlConfig() {
        for button in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: button.emoji, at: bottomChoices.count, animated: false)
            
            bottomSegmentedControl.selectedSegmentIndex = 0
        }
    }
    
    
    func topSegmentedControlPosition() {
        let position = topSegmentedControl.selectedSegmentIndex // This means that whatever the position of the button, it will be correct index number for segmented control.
        let choice = topChoices[position] // I added the constant position as the number, because selectedSegmentIndex is a Int.
        
        topCaptionLabel.text = choice.caption // I have to specify I want the property .caption from the CaptionOption in the array.
    }
    
    
    func bottomSegmentedControlPosition() {
        let position = bottomSegmentedControl.selectedSegmentIndex
        let choice = bottomChoices[position]
        
        bottomeCaptionLabel.text = choice.caption
    }
    
}


