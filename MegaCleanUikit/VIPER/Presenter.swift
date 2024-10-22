//
//  Presenter.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 19/10/24.
//

import Foundation


class UnitsPresenter : UnitsViewToPresenterProtocol {
    func viewDidLoad() {
        
    }
    
    func numberOfRowInSection() -> Int {
        return 0
    }
    
    func listAt(indexPath: IndexPath) -> UnitsEntity {
        return UnitsEntity(name: "Subash")
    }
    
    func selectRowAt(indexPath: IndexPath) {
        
    }
    
    func deleteRowAt(indexPath: IndexPath) {
        
    }
    
    func addTaskList() {
        
    }
    
    var router: UnitsPresenterToRouterProtocol?
    var interactor: UnitsPresenterToInteractorProtocol?
    var view: UnitsPresenterToViewProtocol?
    
}


extension UnitsPresenter : UnitsInteractorToPresenterProtocol {
    func fetchedList(taskList: [UnitsEntity]) {
        
    }
    
    func selectedList(taskList: UnitsEntity) {
        
    }
    
    
}
