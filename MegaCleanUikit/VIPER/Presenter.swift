//
//  Presenter.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 19/10/24.
//

import Foundation


class UnitsPresenter : UnitsViewToPresenterProtocol {
    var router: UnitsPresenterToRouterProtocol?
    var interactor: UnitsPresenterToInteractorProtocol?
    var view: UnitsPresenterToViewProtocol?
    
}


extension UnitsPresenter : UnitsInteractorToPresenterProtocol {
    
}
