
class UnitsInteractor : PresenterToInteractorUnitsProtocol {
    var presenter : InteractorToPresenterUnitsProtocol?
 
    func loadList() -> [String] {
        var stringList: [String] = []
        for i in 1...100 {
            stringList.append("Name \(i)")
        }
        return stringList
    }
    
    
    
    
}
