//
//  UnitsViewController.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 22/10/24.
//

import UIKit

class UnitsViewController: UIViewController, UnitsPresenterToViewProtocol {
    
    var presenter : UnitsViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
    

}
