
import UIKit

class DisplayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var FirstNameLabel: UILabel!
    
    @IBOutlet weak var LastNameLabel: UILabel!
    
    @IBOutlet weak var EmailLabel: UILabel!
    
    
    @IBOutlet weak var PasswordLabel: UILabel!
    @IBAction func SignOutButtonTapped(_ sender: Any) {
        print("SignOutButtonTapped!!")
    }
    
    
    @IBAction func LoadButtonTapped(_ sender: Any) {
         print("LoadButtonTapped!!")    }
    
}
