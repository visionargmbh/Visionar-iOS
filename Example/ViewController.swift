import UIKit

class ViewController: UIViewController {
    
    // Insert your visionar AppKey here
    let appKey = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ARViewController
        vc.modalPresentationStyle = .fullScreen
        vc.appKey = appKey
    }
}
