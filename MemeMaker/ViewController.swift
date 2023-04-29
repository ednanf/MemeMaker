//
//  ViewController.swift
//  MemeMaker
//
//  Created by Ednan R. Frizzera Filho on 29/04/23.
//

import UIKit

class ViewController: UIViewController {
// MARK: - Properties
    let topChoices: [CaptionOption] = [CaptionOption(emoji: "👨🏻‍💻", caption: "Post a meme"), CaptionOption(emoji: "😳", caption: "Looks at girl"), CaptionOption(emoji: "🫴🏻", caption: "Helps someone")]
    let bottomChoices: [CaptionOption] = [CaptionOption(emoji: "😳", caption: "Pervert"), CaptionOption(emoji: "👨🏻‍⚖️", caption: "Lawsuit"), CaptionOption(emoji: "🤡", caption: "Weirdo")]
    
// MARK: - IBOutlets
    @IBOutlet var topSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomeCaptionLabel: UILabel!
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// MARK: - IBActions

    @IBAction func segmentedControls(_ sender: Any) {
    }
    
// MARK: - Functions
    
    
    
}

