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
    let testImage = UIImage(named: "checklist")
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
        textView.font = UIFont.boldSystemFont(ofSize: 21)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.textColor = .white
        textView.backgroundColor = .digiproAzul
        
        
        return textView
    }()
    
    //Creamos los botones para hacer el walkthroght y aplicamos private para encapsulacion en las clases
   private let previousButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        return button
        
    }()
    
    private let nextButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.green, for: .normal)
        return button
        
    }()
    
    //Creamos un PageControl para que nos indique en que View estamos posicionados
    
    private let pageControl: UIPageControl = {
        
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.currentPageIndicatorTintColor = .green
        pageControl.pageIndicatorTintColor = .digiproVerde
        return pageControl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    //Añadiremos nuestra imagen en una imageView
            
    view.addSubview(descriptionTextView)
    view.backgroundColor = .digiproAzul
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
        
        
        //Creamos un Stack View que es un arreglo de views
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton,pageControl,nextButton])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
//        bottomControlsStackView.backgroundColor = .digiproAzul
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


