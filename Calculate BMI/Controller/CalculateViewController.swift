
import UIKit

class CalculateViewController: UIViewController {
  
    var calculatorBrain = CalculatorBrain()
 
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var hightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var hightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        hightLabel.text = String(format: "%.2f", hightSlider.value)
        weightLabel.text =  String(format: "%.1f", weightSlider.value)
    }


    @IBAction func hightSlider(_ sender: UISlider) {
        let hight = String(String(format: "%.2f",sender.value))
        hightLabel.text = "\(hight) cm"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.1f", sender.value)
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func CalculatePressButton(_ sender: UIButton) {
        let hight = hightSlider.value
        let weight = weightSlider.value
        calculatorBrain.BMIValue(weight: weight, hight: hight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = calculatorBrain.getBMIValue()
            resultVC.propety = calculatorBrain.getPropety()
            resultVC.color = calculatorBrain.getBackground()
        }
    }
}

