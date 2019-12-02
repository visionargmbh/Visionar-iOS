import UIKit

class ViewController: UIViewController {
    
    let appKey = "U2FsdGVkX1/UZ3hTvSua9SwVjntUujQ5tyXIGTm02MzIKyQFG3xrwOlG0IwBcVet2abe7ixe6H7lz90dkWuFJizrnKOwpGFjdsGQq9Vy/1+5MUwPUCXnB6rUgCFTlDaS"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ARViewController
        vc.modalPresentationStyle = .fullScreen
        vc.appKey = appKey
    }
}
