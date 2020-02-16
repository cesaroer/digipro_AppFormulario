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
        //Configuramos el content mode para que no cambie sus dimensiones con rotacion
        imageView.contentMode = .scaleAspectFit
    
        return imageView
    }()
    
    //Creamos un TextView para describir
    let descriptionTextView: UITextView = {
    let textView = UITextView()
        textView.text = "Llena el formulario con datos correctos y concisos. "
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
            
            
//  view.addSubview(testImageView)
    view.addSubview(descriptionTextView)
    setUpLayout()
        
      
        
    }
    
    private func setUpLayout(){
        
    let topImageContainerView = UIView()
    // topImageContainerView.backgroundColor = .blue
    view.addSubview(topImageContainerView)

    //Activamos autolayuot
    topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
    topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
    
    topImageContainerView.addSubview(testImageView)
        
    //Añadimos constraints
    testImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
    testImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
    testImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        
    //Constraints de el textview
    descriptionTextView.topAnchor.constraint(equalTo:topImageContainerView.bottomAnchor).isActive = true
    descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 19).isActive =
        true
    descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -19 ).isActive = true
    descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0 ).isActive = true
        
            
           
}


}


