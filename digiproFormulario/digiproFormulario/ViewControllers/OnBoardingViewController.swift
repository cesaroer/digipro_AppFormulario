//
//  OnBoardingViewController.swift
//  digiproFormulario
//
//  Created by Cesar on 16/02/20.
//  Copyright © 2020 CesarVargas. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    //Creamos los imageview
    
   let testImageView: UIImageView = {
        let testImage = UIImage(named: "test")
        let imageView = UIImageView(image: testImage)
        
        //Habilitamos el autolayout
        imageView.translatesAutoresizingMaskIntoConstraints = false
    
        return imageView
    }()
    
    //Creamos un TextView para describir
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        textView.text = "Llena el formulario con tus datos correctos  y concisos"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //Añadiremos nuestra imagen en una imageView
            
            
        view.addSubview(testImageView)
        view.addSubview(descriptionTextView)
        setUpLayout(imageView: testImageView)
        
      
        
    }
    
    private func setUpLayout(imageView: UIImageView){
      //Añadimos constraints
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //Constraints de el textview
        descriptionTextView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 100).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0 ).isActive = true
        
            
           
}


}


