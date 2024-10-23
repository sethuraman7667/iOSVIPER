
class UnitsInteractor : PresenterToInteractorUnitsProtocol {
    var presenter : InteractorToPresenterUnitsProtocol?
    
    func loadList() {
        presenter?.fetchList()
    }
}
