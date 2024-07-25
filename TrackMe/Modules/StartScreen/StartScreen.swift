//
//  StartScreen.swift
//  TrackMe
//
//  Created by Daniil Pinigin on 25.07.2024.
//

import UIKit
import SnapKit

final class StartScreen: UIViewController {
    
//    MARK: - Variables
    
    lazy var vr = ViewResources()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initViews()
        initConstraints()
        addTargets()
    }
    
//    MARK: - Init views & constraints
    
    private func initViews() {
        [vr.titleLabel, 
         vr.subtitleLabel,
         vr.startImage,
         vr.signUpButton,
         vr.signInButton]
        .forEach { view.addSubview($0) }
    }
    
    private func initConstraints() {
        vr.titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(19.0)
        }
        vr.subtitleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(65.0)
            make.trailing.equalToSuperview().inset(65.0)
            make.top.equalTo(vr.titleLabel.snp.bottom).offset(16.0)
        }
        vr.startImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(vr.subtitleLabel.snp.bottom).offset(100.0)
        }
        vr.signUpButton.snp.makeConstraints { make in
            make.height.equalTo(52.0)
            make.leading.equalToSuperview().offset(16.0)
            make.trailing.equalToSuperview().inset(16.0)
            make.bottom.equalTo(vr.signInButton).inset(44.0)
        }
        vr.signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(16.0)
        }
    }
    
// MARK: - Add targets
    
    private func addTargets() {
        vr.signUpButton.addTarget(self, action: #selector(signUpTap), for: .touchUpInside)
        vr.signInButton.addTarget(self, action: #selector(signInTap), for: .touchUpInside)
    }
    
}

// MARK: - Objc funcs

extension StartScreen {
    
    @objc func signUpTap() {
        print("signIn")
    }
    
    @objc func signInTap() {
        print("signUp")
    }
    
}

// MARK: ViewResources

class ViewResources {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Войдите в профиль"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Что бы сохранить свой прогресс и иметь к нему доступ с любого устройства"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var startImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "startImage")
        imageView.image = image
        return imageView
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("РЕГИСТРАЦИЯ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ВХОД", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        return button
    }()
    
}
