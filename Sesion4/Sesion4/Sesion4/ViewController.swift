//
//  ViewController.swift
//  Sesion4
//
//  Created by Marco Castope on 28/03/26.
//

import UIKit

class ViewController: UIViewController {
    
    private let ciclos = ["CICLO 1", "CICLO 2", "CICLO 3", "CICLO 4", "CICLO 5", "CICLO 6"]
    private var cicloSeleccionado = ""
    
//    outlets
    
    @IBOutlet weak var codigo: UITextField!
    
    @IBOutlet weak var nombre: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }

    
//    actions
    
    
    @IBAction func btnRegistrar(_ sender: UIButton) {
        let codigo = self.codigo.text
        let nombre = self.nombre.text
        
        print("codigo: \(codigo ?? "")")
        print("nombre: \(nombre ?? "")")
        print("ciclo seleccionado: \(self.cicloSeleccionado)")
        
        
        self.performSegue(withIdentifier: "NavegarADetalle", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NavegarADetalle" {
            guard let codigo = self.codigo.text,
                  let nombre = self.nombre.text else { return}
            let estudiante = Estudiante(codigo: codigo, nombre: nombre, ciclo: self.cicloSeleccionado)
            
            let destinoVC = segue.destination as? EstudianteDetalleViewController
            destinoVC?.estudiante = estudiante
        }
    }
}


extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.ciclos.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.ciclos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.cicloSeleccionado = self.ciclos[row]
    }
}

