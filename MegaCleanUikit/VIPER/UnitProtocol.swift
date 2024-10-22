//
//  UnitProtocol.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 22/10/24.
//

import Foundation
import UIKit

///Presenter
// Input to presenter
protocol UnitsViewToPresenterProtocol {
    
    var view : UnitsPresenterToViewProtocol? { get set}
    var interactor : UnitsPresenterToInteractorProtocol? {get set}
    var router : UnitsPresenterToRouterProtocol? {get set}
    
    func viewDidLoad()
    func numberOfRowInSection() -> Int
    func listAt(indexPath : IndexPath) -> UnitsEntity
    func selectRowAt(indexPath : IndexPath)
    func deleteRowAt(indexPath : IndexPath)
    func addTaskList()
    
}

// Output to presenter
protocol UnitsPresenterToViewProtocol {
    func onFetchList()
    func showEmptyState()
}


///Interactor
// Output to presenter
protocol UnitsInteractorToPresenterProtocol : AnyObject {
    func fetchedList(taskList : [UnitsEntity])
    func selectedList(taskList : UnitsEntity)
}

// Input to presenter
protocol UnitsPresenterToInteractorProtocol {
    var presenter : UnitsInteractorToPresenterProtocol? {get set}
    
    func loadLists()
    func getListAt(indexPath : IndexPath)
}


///Router
// Input to Router
// Output to presenter
protocol UnitsPresenterToRouterProtocol {
   static func createScreen() -> UINavigationController
    
    func pushToAddListOn(view : UnitsPresenterToViewProtocol)
//    func pushToTaskListOn(view : UnitsPresenterToViewProtocol)
}

// Input to presenter
protocol UnitsRouterToPresenterProtocol {
    
}
