//
//  PicsumController.swift
//  Lorem Picsum
//
//  Created by Ayarsen on 23.12.2024.
//

import Foundation
import UIKit

class PicsumController {
    static let baseURL = URL(string: "https://picsum.photos")
    
    public func getImage(completion: @escaping(UIImage?) -> Void, _ size:Int = 500){
        NetworkController.downloadImage(from: URL(string: "https://picsum.photos/500")!) {
            image in
            completion(image)
        }
    }
}
