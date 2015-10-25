//
//  Asignatura.h
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asignatura : NSObject

/*
 {
 "idalumno": "1",
 "cod_asignatura": "27700",
 "convocatoria": "JUN2016",
 "nota": "5.0",
 "curso": "Curso 1",
 "nombre": "Formación histórica del Derecho en España",
 "tipo": "FB",
 "creditos": "6.0",
 "temporalidad": "1"
 },
 */

@property (nonatomic, strong) NSString *idAlumno;
@property (nonatomic, strong) NSString *codAsignatura;
@property (nonatomic, strong) NSString *convocatoria;
@property (nonatomic, strong) NSString *nota;
@property (nonatomic, strong) NSString *curso;
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *tipo;
@property (nonatomic, strong) NSString *creditos;
@property (nonatomic, strong) NSString *temporalidad;

@end
