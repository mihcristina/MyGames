//
//  AddEditViewController.swift
//  MyGames
//
//  Created by Michelli Cristina de Paulo Lima on 29/04/23.
//

import CoreData
import UIKit

class AddEditViewController: UIViewController {

    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!

    var game: Game!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addEditCover(_ sender: Any) {
    }
    
    @IBAction func addEditGame(_ sender: Any) {
        if game == nil {
            game = Game(context: context)
        }
        game.title = tfTitle.text
        game.releaseDate = dpReleaseDate.date

        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
