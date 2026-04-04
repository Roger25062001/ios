//
//  Estudiante.swift
//  Sesion4
//
//  Created by Marco Castope on 28/03/26.
//

import Foundation

struct Estudiante {
    let codigo: String
    let nombre: String
    let ciclo: String
    
    init(codigo: String, nombre: String, ciclo: String) {
        self.codigo = codigo
        self.nombre = nombre
        self.ciclo = ciclo
    }
}
