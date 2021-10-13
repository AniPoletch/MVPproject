//
//  ModuleBulder.swift
//  MVPproject
//
//  Created by anna on 27.09.2021.
//
import UIKit

protocol Builder {
    static func createMainModul() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModul() -> UIViewController {
    let model = Person(firstName: "ANI",lastName: "POLETICH")
        let view = MeinViewController()
        let presenter = MainPresenter(view: view, preson: model)
        view.presenter = presenter
        return view
    
    }
}

