import SwiftUI

struct PlayerViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PlayerViewController {
        let playerVC = PlayerViewController()
                // Add print statement to check if playerVC is nil
        print("PlayerViewController created:", playerVC)
        return playerVC
    }
    
    func updateUIViewController(_ uiViewController: PlayerViewController, context: Context) {
        // Update the view controller if needed
    }
}
