
import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var RetypePasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

   
    @IBAction func CancelButtonPressed(_ sender: Any) {
        print("Button 1 working")
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func RegisterButtonPressed(_ sender: Any) {
        print("Button 2 working")
        
        if(FirstNameTextField.text?.isEmpty)! ||
        (LastNameTextField.text?.isEmpty)! ||
        (EmailTextField.text?.isEmpty)! ||
        (PasswordTextField.text?.isEmpty)!
     
        {
            displayMessage(userMessage: "All Fields are required to fill in !")
            return
        }
        if ((PasswordTextField.text?.elementsEqual(RetypePasswordTextField.text!)) != true)
        {
            displayMessage(userMessage: "Please make sure that password match !")
            return
        }
        let myActivityIndicator=UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        
        myActivityIndicator.center=view.center
        
        myActivityIndicator.hidesWhenStopped = false
        
        myActivityIndicator.startAnimating()
        
        view.addSubview(myActivityIndicator)
        
        
        
        
        
        
    }
    func displayMessage(userMessage:String)->Void
    {
        DispatchQueue.main.async {
            let alertController=UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            let okAction=UIAlertAction(title: "OK", style: .default)
            {(action:UIAlertAction!) in
                print("OK button tapped")
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                                        }
            }
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
    

}
