//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarController = TabBarController()
        print(tabBarController.isViewLoaded)
    }
}

class TabBarController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello !")
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
