import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "You wake up in the middle of nowhere. You look around. To your left you see a vision of a city with towering skylines and luminous lights, and to your right looks like a forest filled with horrors and gloom."
    let answer1a = "Let's go to the city and find some help"
    let answer1b = "I'm a lone wolf, I better forage in the forest"
    
    
    let story2 = "As you walk your way up to the city, a bursting flame falls out of the sky and obliterates the city. You were caught by the heat shockwave and now limping while suffering third degree burns."
    let answer2a = "I accept my fate."
    let answer2b = "My will is stronger than my body. From the flames I will rise."
    
    let story3 = "All of a sudden, the ground shakes beneath, and treants starts to emerge. Their faces look annoyed more than anything."
    let answer3a = "I was a popular kid, let's make friends with the treants."
    let answer3b = "I'm no coward, I shall burn this miscreants into the ashes they once were"
    
    let story4 = "Despite your delusional attempt to do anything, you die."

    
    @IBOutlet weak var topButton: UIButton! //1
    @IBOutlet weak var bottomButton: UIButton! //2
    @IBOutlet weak var storyTextView: UILabel!
    
	var path = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		topButton.setTitle(answer1a, for: UIControlState.normal)
		bottomButton.setTitle(answer1b, for: UIControlState.normal)
		storyTextView.text = story1
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    
        
		if sender.tag == 1 && path == 0 {
			topButton.setTitle(answer2a, for: UIControlState.normal)
			bottomButton.setTitle(answer2b, for: UIControlState.normal)
			storyTextView.text = story2
			path = 1
		}
		
		else if sender.tag == 2 && path == 0 {
			topButton.setTitle(answer3a, for: UIControlState.normal)
			bottomButton.setTitle(answer3b, for: UIControlState.normal)
			storyTextView.text = story3
			path = 2
		}
		else if path == 1 || path == 2 {
			topButton.isHidden = true
			bottomButton.isHidden = true
			storyTextView.text = story4

		}
		
        
    
    }
    



}

