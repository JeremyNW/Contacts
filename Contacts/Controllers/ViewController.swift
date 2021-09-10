//
//  ViewController.swift
//  Contacts
//
//  Created by Jeremy Warren on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    var contact: Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact?.name ?? "New Contact"
        nameTextField.text = contact?.name
        emailTextField.text = contact?.email
        phoneTextField.text = "\(contact?.phone ?? 0)"
        addressTextField.text = contact?.address
    }

    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text,
              let email = emailTextField.text,
              let address = addressTextField.text,
              let phoneString = phoneTextField.text,
              !name.isEmpty,
              !email.isEmpty,
              let phone = Int(phoneString) else { return }
   
    
        if let contact = contact {
            ContactManager.shared.update(contact: contact, newName: name, newEmail: email, newPhone: phone, newAddress: address)
            
        } else {
            ContactManager.shared.createContact(name:name, email: email, phone: phone, address: address)
        }
    
        navigationController?.popViewController(animated: true)
    
    }
    
}

