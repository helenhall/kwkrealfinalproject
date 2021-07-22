//
//  ViewController.swift
//  TabandNav
//
//  Created by Helen Hall on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapButton(_ sender: UIButton) {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

