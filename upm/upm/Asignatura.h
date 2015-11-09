//
//  Asignatura.h
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Asignatura : MTLModel <MTLJSONSerializing>

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

@property (nonatomic, copy, readonly) NSString *idAlumno;
@property (nonatomic, copy, readonly) NSString *codAsignatura;
@property (nonatomic, copy, readonly) NSString *convocatoria;
@property (nonatomic, copy, readonly) NSString *nota;
@property (nonatomic, copy, readonly) NSString *curso;
@property (nonatomic, copy, readonly) NSString *nombre;
@property (nonatomic, copy, readonly) NSString *tipo;
@property (nonatomic, copy, readonly) NSString *creditos;
@property (nonatomic, copy, readonly) NSString *temporalidad;

@end
