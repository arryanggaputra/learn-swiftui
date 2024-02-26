import SwiftUI
import DailymotionPlayerSDK
import AVFoundation
import UIKit


class PlayerViewController: UIViewController, DMPlayerDelegate {
    
    private var playerContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPlayerContainerView()
        initPlayer()
    }
    
    private func setupPlayerContainerView() {
        playerContainerView = UIView()
        // Add debug print statement to track initialization
        print("Player container view initialized:", playerContainerView ?? "no view")
        view.addSubview(playerContainerView)
        playerContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerContainerView.topAnchor.constraint(equalTo: view.topAnchor),
            playerContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            playerContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            playerContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func initPlayer() {
        Dailymotion.createPlayer(playerId: "xbzlf", videoId: "x84sh87", playerParameters:  DMPlayerParameters(), playerDelegate: self) { [weak self] playerView, error in
            // Check if self is still allocated
            guard let self = self else {
                return
            }
            
            // Check for errors
            if let error = error {
                print("Error creating player:", error)
            } else {
                guard let playerView = playerView else {
                    print("Player view is nil")
                    return
                }
                
                // Attach the created Player View to your player container View
                self.playerContainerView.addSubview(playerView)
                playerView.translatesAutoresizingMaskIntoConstraints = false
                
                // Add constraints
                NSLayoutConstraint.activate([
                    playerView.topAnchor.constraint(equalTo: self.playerContainerView.topAnchor),
                    playerView.bottomAnchor.constraint(equalTo: self.playerContainerView.bottomAnchor),
                    playerView.leadingAnchor.constraint(equalTo: self.playerContainerView.leadingAnchor),
                    playerView.trailingAnchor.constraint(equalTo: self.playerContainerView.trailingAnchor)
                ])
            }
        }
    }
    
    // DMPlayerDelegate methods
    func player(_ player: DMPlayerView, openUrl url: URL) {
        // Handle open URL event
    }
    
    func playerWillPresentFullscreenViewController(_ player: DMPlayerView) -> UIViewController? {
        return self
    }
    
    func playerWillPresentAdInParentViewController(_ player: DMPlayerView) -> UIViewController {
        return self
    }
}
