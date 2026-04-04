//
//  EstudianteDetalleViewController.swift
//  Sesion4
//
//  Created by Marco Castope on 28/03/26.
//

import UIKit

class EstudianteDetalleViewController: UIViewController {
    
    var estudiante: Estudiante?

    @IBOutlet weak var codigoResultado: UILabel!
    
    @IBOutlet weak var nombreResultado: UILabel!
    
    @IBOutlet weak var cicloResultado: UILabel!
    
    @IBOutlet weak var tarjetaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
        
        
        self.codigoResultado.text = self.estudiante?.codigo
        self.nombreResultado.text = self.estudiante?.nombre
        self.cicloResultado.text = self.estudiante?.ciclo
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

extension EstudianteDetalleViewController {
    private func configureView() {
        self.tarjetaView.layer.cornerRadius = 16
        self.tarjetaView.layer.cornerCurve = .continuous
    }
}
