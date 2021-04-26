//
//  ViewController.swift
//  RatesConverterMVVM
//
//  Created by Alexander Nazarov on 26.04.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModelProtocol!
   
    @IBOutlet private var rubTF: UITextField!
    @IBOutlet private var usdTF: UITextField!
    @IBOutlet private var imageViewRUB: UIImageView!
    @IBOutlet private var imageViewUSD: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainViewModel(view: self)
        viewModel.setupImageView(imageViewUSD, imageViewRUB)
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
