//
//  AppScrenn.swift
//  dadosViewCold
//
//  Created by Natanael Alves Pereira on 01/03/22.
//

import UIKit

class AppScrenn: UIView {


    // MARK: - Labels fixas:
    
    lazy var  labelNome: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Nome:"
        
        
        return label
    }()
    
    lazy var  labelCep: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Digite o seu Cep: "
        
        
        return label
    }()
    
    lazy var  labelTelefone: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Digite o seu Telefone:"
        
        
        return label
    }()
    
    // MARK: - Labels para usuario digitar
    
    lazy var nomeTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu nome:"
        tf.textColor = .darkGray
        
        return tf
    }()
    
    lazy var cepTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .decimalPad
        tf.placeholder = "Digite seu endereço:"
        tf.textColor = .darkGray
        
        return tf
    }()
    
    lazy var telefoneTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .decimalPad
        tf.placeholder = "Digite seu telefone:"
        tf.textColor = .darkGray
        
        return tf
    }()
    
    //   MARK: - Button
    
    lazy var adicionarButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Adicionar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 52/255, alpha: 1.0)
        
        return button
        
    }()
    
    // MARK: Inicializador
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setUpContraints()
    }
    
    //  MARK: - Método configura
    
    private func configSuperView(){
        self.addSubview(self.labelNome)
        self.addSubview(self.nomeTextField)
        self.addSubview(self.telefoneTextField)
        self.addSubview(self.cepTextField)
        self.addSubview(self.labelCep)
        self.addSubview(self.labelTelefone)
        self.addSubview(self.adicionarButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //  MARK: - Seta as contraints
    
    private func setUpContraints(){
        
        NSLayoutConstraint.activate([
            
            // Digite o nome:
            
            self.labelNome.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            self.labelNome.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.labelNome.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            
            
            self.nomeTextField.topAnchor.constraint(equalTo: self.labelNome.bottomAnchor, constant: 10),
            self.nomeTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.nomeTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            
            // Constraints do CEP:
            
            self.labelCep.topAnchor.constraint(equalTo: self.nomeTextField.bottomAnchor, constant: 10),
            self.labelCep.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.labelCep.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),

            
            self.cepTextField.topAnchor.constraint(equalTo: self.labelCep.bottomAnchor, constant: 10),
            self.cepTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.cepTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            
            // Constraints do Telefone:
            
            self.labelTelefone.topAnchor.constraint(equalTo: self.cepTextField.bottomAnchor, constant: 10),
            self.labelTelefone.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.labelTelefone.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            
            self.telefoneTextField.topAnchor.constraint(equalTo: self.labelTelefone.bottomAnchor, constant: 10),
            self.telefoneTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.telefoneTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            
            // Constraints do button
            
            self.adicionarButton.topAnchor.constraint(equalTo: self.telefoneTextField.bottomAnchor, constant: 25),
            self.adicionarButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.adicionarButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),

        ])
    }
    
    
    
}
