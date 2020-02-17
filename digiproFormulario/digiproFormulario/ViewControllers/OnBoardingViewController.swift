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
    
    //Creamos los botones para hacer el walkthroght y aplicamos private para encapsulacion en las clases
   private let previousButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private let nextButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    //Añadiremos nuestra imagen en una imageView
            
    view.addSubview(descriptionTextView)
    setUpLayout()
    setupButtonControls()
        
      
        
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
    
    func setupButtonControls(){
        
        previousButton.backgroundColor = .red
        
        let middleView = UIView()
        middleView.backgroundColor = .green
        
        //Creamos un Stack View que es un arreglo de views
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton,middleView,nextButton])
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomControlsStackView)
        
        //Configuramos la manera en que estara distribuido el StackVoew
        bottomControlsStackView.distribution = .fillEqually
        
        //Aplicamos constraints de esta manera para evitar poner .isActive = true
        NSLayoutConstraint.activate([
            // safeAreaLayoutGuide.bottomAnchor es para ponerlo debajo del notch
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    
    }


}


