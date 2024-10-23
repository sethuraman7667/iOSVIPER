
import UIKit

class UnitsPresenter: ViewToPresenterUnitsProtocol, InteractorToPresenterUnitsProtocol {
 
    var interactor: PresenterToInteractorUnitsProtocol?
    var router: PresenterToRouterUnitsProtocol?
    var view: PresenterToViewUnitsProtocol?
    var name : [String]? = []
    
    
    func fetchList() -> [String]{
        return name ?? []
    }
    
    func viewDidLoad() {
      name =   interactor?.loadList()
    }
}
