import UIKit

class UnitsRouter: PresenterToRouterUnitsProtocol {
    static func createScreen() -> UINavigationController {
        let presenter : ViewToPresenterUnitsProtocol & InteractorToPresenterUnitsProtocol = UnitsPresenter()
        
        let vc = UnitsViewController()
        vc.presenter = presenter
        vc.presenter?.router = UnitsRouter()
        vc.presenter?.view = vc
        vc.presenter?.interactor = UnitsInteractor()
        vc.presenter?.interactor?.presenter = presenter
        
        let nc = UINavigationController(rootViewController: vc)
        nc.interactivePopGestureRecognizer?.isEnabled = false
        nc.navigationBar.isHidden = true
        return nc
        
    }
}
