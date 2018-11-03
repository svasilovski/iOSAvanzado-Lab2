//
//  DatosTableViewCell.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 3/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "DatosTableViewCell.h"

@interface DatosTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *DescripionLabel;

@end

@implementation DatosTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    [self.ImageView setImage:self.detalle.image];
    [self.titleLabel setText:self.detalle.name];
    [self.DescripionLabel setText:self.detalle.details];
    
    self.ImageView.translatesAutoresizingMaskIntoConstraints=false;
    [[self.ImageView.widthAnchor constraintEqualToConstant:40] setActive:true];
    [[self.ImageView.heightAnchor constraintEqualToConstant:40] setActive:true];
    self.imageView.layer.cornerRadius = 10;
    self.imageView.layer.borderColor = UIColor.blueColor.CGColor;
    self.imageView.layer.borderWidth = 1.5;
    
    self.titleLabel.translatesAutoresizingMaskIntoConstraints=false;
    [[self titleLabel] setFont:[UIFont fontWithName:@"System" size:20]];
    
    self.DescripionLabel.translatesAutoresizingMaskIntoConstraints=false;
    self.DescripionLabel.numberOfLines = 3;
    [self.DescripionLabel sizeToFit];
    
}

- (void)prepareForReuse{
    [super prepareForReuse];
    [self.ImageView setImage:[UIImage imageNamed:@""]];
    [self.titleLabel setText:@""];
    [self.DescripionLabel setText:@""];
}

@end
