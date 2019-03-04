//
//  AddContactViewController.swift
//  MVVM Contacts app
//
//  Created by Kirill Verhoturov on 11.01.2018.
//  Copyright © 2018 Kirill Verhoturov. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    var contactsViewModelController: ContactViewModelController?
    var didAddContact: ((ContactViewModel, Int) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.becomeFirstResponder()
    }

    @IBAction func didClickOnDoneButton(_ sender: UIBarButtonItem) {
        guard let firstName = firstNameTextField.text,
            let lastName = lastNameTextField.text
            else {
                return
        }

        if firstName.isEmpty || lastName.isEmpty {
            showEmptyNameAlert()
            return
        }

        dismiss(animated: true) { [unowned self] in
            self.contactsViewModelController?.createContact(firstName: firstName, lastName: lastName,
                                                            success: self.didAddContact, failure: nil)
        }

    }

    @IBAction func didClickOnCancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    fileprivate func showEmptyNameAlert() {
        showMessage(title: "Ошибка", message: "Заполните все поля")
    }

    fileprivate func showMessage(title: String, message: String) {
        let alertView = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Ок", style: .destructive, handler: nil))
        present(alertView, animated: true, completion: nil)
    }

}
