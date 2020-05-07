//
//  ChallengesViewController.swift
//  DicodingApps
//
//  Created by Mochamad Nurkhayal Kadafi on 17/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {

    @IBOutlet weak var arChallange: UIStackView!
    @IBOutlet weak var guestBookChallange: UIStackView!
    @IBOutlet weak var educationChallange: UIStackView!
    @IBOutlet weak var flutterChallange: UIStackView!
    @IBOutlet weak var webChallange: UIStackView!
    
    // Digunakan untuk menampung data item
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
                       ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
                       ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
                       ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
                       ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
                       ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &arChallange)
        addTapped(parameter: &guestBookChallange)
        addTapped(parameter: &educationChallange)
        addTapped(parameter: &flutterChallange)
        addTapped(parameter: &webChallange)
        // Do any additional setup after loading the view.
    }
    
    func addTapped(parameter : inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture : UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view as? UIStackView{
            case(arChallange):
                controller.detail = challenges[0]
            case(guestBookChallange):
                controller.detail = challenges[1]
            case(educationChallange):
                controller.detail = challenges[2]
            case(flutterChallange):
                controller.detail = challenges[3]
            case(webChallange):
                controller.detail = challenges[4]
            default:
                controller.detail = challenges[5]
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
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
