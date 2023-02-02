
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var propety: String?
    var color: UIColor?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        adviceLabel.text = propety
        bmiLabel.text = bmiValue
        view.backgroundColor = color
    }
    
    @IBAction func reCalculated(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
