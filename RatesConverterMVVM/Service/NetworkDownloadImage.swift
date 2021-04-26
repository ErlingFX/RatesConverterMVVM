//
//  NetworkDownloadImage.swift
//  RatesConverterMVVM
//
//  Created by Alexander Nazarov on 26.04.2021.
//

import UIKit
import Kingfisher

class NetworkDownloadImage {
    
    static let shared: NetworkDownloadImage! = NetworkDownloadImage()
    
    private init () {}
    
    func setupImageView(_ usdImageView: UIImageView, _ rubImageView: UIImageView) {
        let usdUrl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/800px-Flag_of_the_United_States.svg.png")
        let rubUrl = URL(string: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/1280px-Flag_of_Russia.svg.png")
        
        usdImageView.kf.setImage(with: usdUrl)
        rubImageView.kf.setImage(with: rubUrl)
    }
}

