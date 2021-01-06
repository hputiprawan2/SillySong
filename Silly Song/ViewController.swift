//
//  ViewController.swift
//  Silly Song
//
//  Created by Hanna Putiprawan on 1/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        nameField.returnKeyType = .done
    }

    // Clear out the text of both the nameField and the lyricsView
    @IBAction func reset(_ sender: Any) {
        nameField.text = ""
        lyricsView.text = ""
    }
    
    // Take the name entered in the name field, generate the personalized lyrics, and display the lyrics in the lyrics view
    @IBAction func displayLyrics(_ sender: AnyObject) {
        let fullName = nameField.text!.capitalized
        let shortName = fullName.dropFirst()
        let lyrics = "\(fullName), \(fullName), Bo B\(shortName) Banana Fana Fo F\(shortName) Me My Mo M\(shortName) \(fullName) ♡"
        lyricsView.text = lyrics
    }
}

// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
