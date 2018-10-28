//
//  DatosServices.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "DatosServices.h"

@interface DatosServices ()

@property (nonatomic, strong) NSMutableArray *secciones;

@end

@implementation DatosServices
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _secciones = [NSMutableArray array];
        
        Agrupador *iOS = [[Agrupador alloc] initWithName:@"Apple Inc."];
        
        [iOS addDetalle:[Detalle subdivisionWithName:@"Steve" lastName:@"Jobs" details:@"Fue un empresario y magnate de los negocios del sector informatico y de la industria del entretenimiento estadounidese. Fue cofundador y presidente ejecutivo de Apple Inc. y maximo accionista individual de The Walt Disney Company." image:[UIImage imageNamed:@"SteveJobs"]]];
        
        [iOS addDetalle:[Detalle subdivisionWithName:@"Tim" lastName:@"Cook" details:@"Es el actual director ejecutivo de Apple Inc. Ingreso en Marzo de 1998 en la compañia, donde actuo como director ejecutivo provisional en 2004, 2009 y 2011, en sustitucion de Steve Jobs, que se encontraba en tratamiento medico." image:[UIImage imageNamed:@"TimCook"]]];
        
        [_secciones addObject:iOS];
    }
    
    return self;
}

- (NSArray *)getAllDatos {
    return [NSArray arrayWithArray:self.secciones];
}

@end
