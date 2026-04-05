//
//  ViewController.swift
//  Sesion05
//
//  Created by Marco Castope on 1/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    private let estudiantes = ["Estudiante 1", "EStudiante 2", "EStudiante 3"]

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.estudiantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EstudianteCell", for: indexPath)
        cell.textLabel?.text = self.estudiantes[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(self.estudiantes[indexPath.row])")
        
    }
    
    
}

