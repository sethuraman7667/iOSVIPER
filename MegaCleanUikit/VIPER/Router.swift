//
//  Router.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 19/10/24.
//

import Foundation
import UIKit

typealias presenterType = UnitsViewToPresenterProtocol & UnitsInteractorToPresenterProtocol


class UnitsRouter : UnitsPresenterToRouterProtocol{
    
    func createScreen() -> UIViewController {
        let presenter : presenterType  = UnitsPresenter()
        let vc = UnitsViewController()
        vc.presenter = presenter
        vc.presenter?.router = UnitsRouter()
        vc.presenter?.view = vc
        vc.presenter?.interactor = UnitsInteractor()
//        vc.presenter?.interactor?.presenter = presenter
        return vc
    }
    
}
