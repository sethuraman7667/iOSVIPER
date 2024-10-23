//
//  UnitsViewController.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 22/10/24.
//

import UIKit

class UnitsViewController: UIViewController, PresenterToViewUnitsProtocol {
   
    var presenter : ViewToPresenterUnitsProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        let lbl = UILabel(frame: CGRect(x: 16, y: 32, width: 200, height: 32))
        lbl.text = "Loading"
        view.addSubview(lbl)
        presenter?.viewDidLoad()
//        lbl.text = presenter?.
    }
    
    
    

}
