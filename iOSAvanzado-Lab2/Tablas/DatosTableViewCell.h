//
//  DatosTableViewCell.h
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 3/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Model/Detalle.h"

NS_ASSUME_NONNULL_BEGIN

@interface DatosTableViewCell : UITableViewCell

@property (nonatomic, strong) Detalle *detalle;

@end

NS_ASSUME_NONNULL_END
