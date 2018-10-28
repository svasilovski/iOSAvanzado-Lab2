//
//  Agrupador.h
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Detalle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Agrupador : NSObject

@property (nonatomic, readonly) NSString *seccion;
@property (nonatomic, copy) NSMutableArray *detalle;

- (instancetype)initWithName:(NSString *)seccion;
- (void)addDetalle:(Detalle *)detalle;

@end

NS_ASSUME_NONNULL_END
