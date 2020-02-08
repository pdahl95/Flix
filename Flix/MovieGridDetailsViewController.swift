//
//  MovieGridDetailsViewController.swift
//  Flix
//
//  Created by Pernille Dahl on 2/7/20.
//  Copyright © 2020 Pernille Dahl. All rights reserved.
//

import UIKit

class MovieGridDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        dateLabel.text = movie["release_date"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
       
        posterView.af_setImage(withURL: posterUrl!)
       
       
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
       
        backdropView.af_setImage(withURL: backdropUrl!)
        
        
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onTap(_ sender: Any) {
        // do the seque here
        performSegue(withIdentifier: "urlMovie", sender: self)
        print("Urlmovie clicked")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
