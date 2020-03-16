//
//  ViewController.swift
//  RealmDB
//
//  Created by Brian Advent on 12.10.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var noteTextView: UITextView!
    
    var notebookObject:Notebook! {
        didSet {
            self.configureView()
        }
    }
    
    var noteObject:Note?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    
    
    func configureView () {
        if noteObject == nil {
            self.navigationItem.title = "New Note"
        }else{
            if let content = noteObject?.content {
                noteTextView.text = content
                self.navigationItem.title = content
            }
        }
        
        navigationItem.largeTitleDisplayMode = .never

    }

    
    @IBAction func saveNote(_ sender: Any) {
        if noteObject == nil { // Create new Note
            NotesManager.shared.addNote(notebookObject, content: noteTextView.text)
        }else{ // Update
            NotesManager.shared.updateNote(noteObject!, newContent: noteTextView.text)
        }
    }
    
}

