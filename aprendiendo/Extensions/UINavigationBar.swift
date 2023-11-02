import SwiftUI



extension UINavigationBar {
    func setCustomAppearance(background: UIColor) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = background
        self.standardAppearance = appearance
        self.scrollEdgeAppearance = appearance
    }
}

