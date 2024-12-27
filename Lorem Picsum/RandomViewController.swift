//
//  RandomViewController.swift
//  Lorem Picsum
//
//  Created by Ayarsen on 23.12.2024.
//

import UIKit

class RandomViewController: UIViewController {
    
    let picsumController = PicsumController()

    override func viewDidLoad() {
        loadNewImage() //Setting first image
        super.viewDidLoad()
    }
    
    private func loadNewImage(){
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        imageView.isHidden = true
        self.picsumController.getImage(completion: { image in
            DispatchQueue.main.async {
                self.imageView.image = image
                self.activityIndicator.isHidden = true
                self.activityIndicator.stopAnimating()
                self.imageView.isHidden = false
            }
        })
    }
    
    //MARK: Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: Actions
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func randomImageButtonTapped(_ sender: Any) {
        loadNewImage()
    }
}
