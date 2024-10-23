
class UnitsPresenter: ViewToPresenterUnitsProtocol, InteractorToPresenterUnitsProtocol {
    func fetchList() -> String{
        return ""
    }
    
    
    
   
    var interactor: PresenterToInteractorUnitsProtocol?
    var router: PresenterToRouterUnitsProtocol?
    var view: PresenterToViewUnitsProtocol?
    
    
    func viewDidLoad() {
        interactor?.loadList()
    }
}
