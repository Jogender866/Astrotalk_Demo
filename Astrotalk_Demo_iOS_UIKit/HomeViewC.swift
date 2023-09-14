//
//  HomeViewC.swift
//  Astrotalk_Demo_iOS_UIKit
//
//  Created by Jogender Singh on 05/09/23.
//

import UIKit

class HomeViewC: UIViewController {
    // MARK: - IBOUTLETS
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .roundedRect)
              button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
              button.setTitle("Test Crash", for: [])
              button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
              view.addSubview(button)
    }
    // TODO: DEINIT
    deinit {
        print("HomeViewC DEINIT...!")
    }
    // MARK: - ACTIONS
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
         let numbers = [0]
         let _ = numbers[1]
     }
    
}
