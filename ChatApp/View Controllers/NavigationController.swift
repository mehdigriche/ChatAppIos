//Created on 07/11/2019 by Griche Mehdi

import UIKit

class NavigationController: UINavigationController {
  
  init(_ rootVC: UIViewController) {
    super.init(nibName: nil, bundle: nil)
    pushViewController(rootVC, animated: false)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("error...")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationBar.tintColor = .primary
    navigationBar.prefersLargeTitles = true
    navigationBar.titleTextAttributes = [.foregroundColor: UIColor.primary]
    navigationBar.largeTitleTextAttributes = navigationBar.titleTextAttributes
    
    toolbar.tintColor = .primary
  }
  
  override var shouldAutorotate: Bool {
    return false
  }
  
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .portrait
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return topViewController?.preferredStatusBarStyle ?? .default
  }
  
}