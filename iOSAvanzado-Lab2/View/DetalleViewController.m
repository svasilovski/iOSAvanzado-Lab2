//
//  DetalleViewController.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 3/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nombreLabel;
@property (weak, nonatomic) IBOutlet UILabel *descripcionLabel;

@end

@implementation DetalleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detalle = self.detalle;
}

-(void)setDetalle:(Detalle *)detalle {
    _detalle = detalle;
    
    [self.imageView setImage:self.detalle.image];
    [self.nombreLabel setText:self.detalle.name];
    [self.descripcionLabel setText:self.detalle.details];
}
@end
