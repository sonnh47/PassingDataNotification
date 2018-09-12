
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    var bucket: String!
    //let dataToSend = ["Le Van Luyen", "Cuop vang", "Trom Cho", "Hiep Dam"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func peruButton(_ sender: Any) {
        bucket = txtData.text
        NotificationCenter.default.post(name: .peru, object: bucket)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func BrazinButton(_ sender: Any) {
        bucket = txtData.text
        NotificationCenter.default.post(name: .argentina, object: bucket)
        navigationController?.popViewController(animated: true)
    }
}
