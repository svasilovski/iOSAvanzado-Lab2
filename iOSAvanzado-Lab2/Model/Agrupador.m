//
//  Agrupador.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Agrupador.h"

@implementation Agrupador


- (instancetype)initWithName:(NSString *)seccion {
    self = [super init];
    if (self){
        _seccion = seccion;
        _detalle = [NSMutableArray array];
    }
    return self;
}

- (void)addDetalle:(Detalle *)detalle{
    [_detalle addObject:detalle];
}

@end
