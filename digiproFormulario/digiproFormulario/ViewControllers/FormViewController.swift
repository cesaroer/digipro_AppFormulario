//
//  ViewController.swift
//  digiproFormulario
//
//  Created by Cesar on 15/02/20.
//  Copyright © 2020 CesarVargas. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var apPatTextField: UITextField!
    @IBOutlet weak var apMatTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var celphoneTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       //Label de error trasnparente
        errorLabel.alpha = 0
       //Estilo a TextFields
        Styles.styleTextField(nameTextField)
        Styles.styleTextField(apMatTextField)
        Styles.styleTextField(apPatTextField)
        Styles.styleTextField(emailTextField)
        Styles.styleTextField(celphoneTextField)
        //Estilo al Boton
        Styles.styleFilledButton(sendButton)
        
        self.hideKeyboard()
        
    }

    @IBAction func sendButtonTaped(_ sender: Any) {
    }
}


extension UIViewController {
    //Funciones para ocultar los keyboards
    
    func hideKeyboard(){
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (dissmissKeyboard))
    
        view.addGestureRecognizer(tap)
    
    }

    @objc func dissmissKeyboard(){
        view.endEditing(true)
    }
    
}

