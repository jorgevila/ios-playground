//
//  Asignatura.m
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "Asignatura.h"

@implementation Asignatura

@synthesize idAlumno;
@synthesize codAsignatura;
@synthesize convocatoria;
@synthesize nota;
@synthesize curso;
@synthesize nombre;
@synthesize tipo;
@synthesize creditos;
@synthesize temporalidad;



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

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"idAlumno": @"idalumno",
             @"codAsignatura": @"cod_asignatura",
             @"convocatoria": @"convocatoria",
             @"nota": @"nota",
             @"curso": @"curso",
             @"nombre": @"nombre",
             @"tipo": @"tipo",
             @"creditos": @"creditos",
             @"temporalidad": @"temporalidad",
             };
}

@end