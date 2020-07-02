//
//  ViewCodeProtocol.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 01/07/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import Foundation

public protocol ViewCode {
    func setupViews()
    func configureViews()
    func setupViewHierarchy()
    func setupConstraints()
}

extension ViewCode {
    public func setupViews() {
        configureViews()
        setupViewHierarchy()
        setupConstraints()
    }

    public func configureViews() {}
    public func setupViewHierarchy() {}
    public func setupConstraints() {}
}
