import UIKit


// View <--> Presenter
protocol ViewToPresenterUnitsProtocol {
    var view : PresenterToViewUnitsProtocol? {get set}
    var interactor : PresenterToInteractorUnitsProtocol? {get set}
    var router : PresenterToRouterUnitsProtocol? {get set}
    
    func viewDidLoad()
    func fetchList() -> [String]
    
//    func getName() -> String
}

protocol PresenterToViewUnitsProtocol {
    
}

//Interactor <--> Presenter
protocol PresenterToInteractorUnitsProtocol {
    var presenter : InteractorToPresenterUnitsProtocol? {get set}
    func loadList() -> [String]
}

protocol InteractorToPresenterUnitsProtocol {
    func fetchList() -> [String]
}


//Router <--> Presenter
protocol PresenterToRouterUnitsProtocol {
    static func createScreen() -> UINavigationController
}


