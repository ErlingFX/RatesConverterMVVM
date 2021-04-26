//
//  ViewController.swift
//  RatesConverterMVVM
//
//  Created by Alexander Nazarov on 26.04.2021.
//

import UIKit

class MainViewController: UIViewController {

    var viewModel: MainViewModelProtocol!
    
    @IBOutlet weak var rubTF: UITextField!
    @IBOutlet weak var usdTF: UITextField!
    
    @IBOutlet var imageViewRub: UIView!
    @IBOutlet var imageViewUsd: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainViewModel(view: self)
    
    }

    @IBAction func okButtonTapped(_ sender: Any) {
        viewModel.tappedOkButton(usdTF.text)
    }
}

extension MainViewController: MainViewProtocol {
    func setToRub(text: String) {
        DispatchQueue.main.async {
            self.rubTF.text = text
        }
    }
}
