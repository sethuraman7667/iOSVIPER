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
    
}

// Output to presenter
protocol UnitsPresenterToViewProtocol {
    
}


///Interactor
// Output to presenter
protocol UnitsInteractorToPresenterProtocol : AnyObject {
    
}

// Input to presenter
protocol UnitsPresenterToInteractorProtocol {
    
}


///Router
// Input to Router
// Output to presenter
protocol UnitsPresenterToRouterProtocol {
    func createScreen() -> UIViewController
}

// Input to presenter
protocol UnitsRouterToPresenterProtocol {
    
}
