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
    
    self.imageView.translatesAutoresizingMaskIntoConstraints=false;
    [[self.imageView.widthAnchor constraintEqualToConstant:140] setActive:true];
    [[self.imageView.heightAnchor constraintEqualToConstant:140] setActive:true];
    self.imageView.layer.cornerRadius = 69;
    self.imageView.layer.borderColor = UIColor.blueColor.CGColor;
    self.imageView.layer.borderWidth = 1.5;
    self.imageView.layer.masksToBounds = false;
    self.imageView.clipsToBounds = true;
    
    self.nombreLabel.translatesAutoresizingMaskIntoConstraints=false;
    [[self nombreLabel] setFont:[UIFont fontWithName:@"System" size:25]];
    self.nombreLabel.textColor = [UIColor blueColor];
    
    self.descripcionLabel.translatesAutoresizingMaskIntoConstraints=false;
    self.descripcionLabel.numberOfLines = 10;
    [[self descripcionLabel] setFont:[UIFont fontWithName:@"System" size:14]];
    [self.descripcionLabel sizeToFit];
    self.descripcionLabel.lineBreakMode = NSLineBreakByWordWrapping;
}

-(void)setDetalle:(Detalle *)detalle {
    _detalle = detalle;
    
    [self.imageView setImage:self.detalle.image];
    [self.nombreLabel setText:self.detalle.fullName];
    [self.descripcionLabel setText:self.detalle.details];
}
@end
