//
//  ViewController.swift
//  MVPproject
//
//  Created by anna on 27.09.2021.
//

import UIKit

class MeinViewController: UIViewController {
 // MARK: - IBOutlet
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    // MARK: - IBAction
    
    @IBAction func didTapButtonAction(_sender:Any){
        self.presenter.showGreeting()
    }
}
extension MeinViewController: MainViewProtocol {
func setGreeting(greeting: String) {
    self.greetingLabel.text = greeting
     }
}
