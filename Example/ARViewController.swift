import UIKit
import VARkit

class ARViewController: VARViewController {
    
    @IBOutlet weak var loadingView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubviewToFront(loadingView)
    }
    
    override func statusDidChange(status: VARStatus) {
        super.statusDidChange(status: status)
        
        switch status {
        case .updateStarted(let firstTime):
            print("Updated started: FirstTime: \(firstTime)")
            loadingView.isHidden = false
            self.view.bringSubviewToFront(loadingView)
        case .downloadStarted:
            print("Download started")
        case .downloadProgress(let percentage):
            print("Download progress: \(Int(percentage * 100))%")
        case .downloadCompleted:
            print("Download completed")
        case .updateCompleted:
            print("Update completed")
            hideLoadingView()
        case .updateFailed(let error):
            print("Update failed: \(error)")
        case .alreadyUpToDate:
            print("Update completed - Already up to date")
            hideLoadingView()
        @unknown default:
            print("Unknown case")
        }
    }
    
    private func hideLoadingView() {
        DispatchQueue.main.async {
            self.loadingView.isHidden = true
        }
    }
}
