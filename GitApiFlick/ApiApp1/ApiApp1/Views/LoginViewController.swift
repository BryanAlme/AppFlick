//
//  LoginViewController.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

import UIKit

class LoginViewController: UIViewController {
    

    lazy var UsernameField : UITextField = {
        let UsernameField = UITextField ()
        UsernameField.textColor = .black
        UsernameField.placeholder = "Insert Name Here "
        
        
        return UsernameField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
