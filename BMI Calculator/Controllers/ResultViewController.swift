
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLbl.text = bmiValue
        adviceLbl.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
   
}
