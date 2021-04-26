//
//  ViewController.swift
//  RatesConverterMVVM
//
//  Created by Alexander Nazarov on 26.04.2021.
//

import UIKit
import Kingfisher

class MainViewController: UIViewController {
    
    var viewModel: MainViewModelProtocol!
    var networkImageDownload: NetworkImageDownload!
    
    let urlRub = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/250px-Flag_of_Russia.svg.png")
    let urlUsd = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Flag_of_the_United_States_%28Pantone%29.svg/250px-Flag_of_the_United_States_%28Pantone%29.svg.png")
    
    
    @IBOutlet weak var rubTF: UITextField!
    @IBOutlet weak var usdTF: UITextField!
    @IBOutlet weak var imageViewRUB: UIImageView!
    @IBOutlet weak var imageViewUSD: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainViewModel(view: self)
        imageViewRUB.kf.setImage(with: urlRub)
        imageViewUSD.kf.setImage(with: urlUsd)
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
