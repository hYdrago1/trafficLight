

import UIKit

enum TrafficLightState {
        case red, yellow, green
    }

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var activeButton: UIButton!
    var currentState: TrafficLightState = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 75
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 75
        greenView.alpha = 0.3
        
        activeButton.layer.cornerRadius = 30
    }
    
    
    @IBAction func getChangeActiveButton(_ sender: UIButton) {
        switch currentState {
        case .red:
            redView.alpha = 1.0
            sender.setTitle("NEXT", for: .normal)
            currentState = .yellow
            greenView.alpha = 0.3
        case .yellow:
            yellowView.alpha = 1.0
            sender.setTitle("NEXT", for: .normal)
            currentState = .green
            redView.alpha = 0.3
        case .green:
            greenView.alpha = 1.0
            sender.setTitle("START", for: .normal)
            currentState = .red
            yellowView.alpha = 0.3
        }
        
    }
}
