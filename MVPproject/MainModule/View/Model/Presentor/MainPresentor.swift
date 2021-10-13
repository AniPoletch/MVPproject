//
//  MainPresentor.swift
//  MVPproject
//
//  Created by anna on 27.09.2021.
// сколько экранов столько презентеров

import Foundation

protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting:String)
    }

protocol MainViewPresenterProtocol: AnyObject{
    init(view: MainViewProtocol, preson: Person)
    func showGreeting()
}
class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let preson: Person
    required init(view: MainViewProtocol, preson: Person) {
        self.view = view
        self.preson = preson
    }
    
    func showGreeting() {
        let greeting = self.preson.firstName + "" + self.preson.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
