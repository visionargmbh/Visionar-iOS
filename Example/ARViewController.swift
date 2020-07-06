import UIKit
import VARkit

class ARViewController: VARViewController {
    
    override func statusDidChange(status: VARStatus) {
        super.statusDidChange(status: status)
        
        switch status {
        case .updateStarted(let firstTime):
            print("Updated started: FirstTime: \(firstTime)")
        case .downloadStarted:
            print("Download started")
        case .downloadProgress(let percentage):
            print("Download progress: \(Int(percentage * 100))%")
        case .downloadCompleted:
            print("Download completed")
        case .updateCompleted:
            print("Update completed")
        case .updateFailed(let error):
            print("Update failed: \(error)")
        case .alreadyUpToDate:
            print("Update completed - Already up to date")
        @unknown default:
            print("Unknown case")
        }
    }
}
