//
//  Detalle.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Detalle.h"

@implementation Detalle

- (instancetype)initWithName:(NSString *)name
                    lastName:(NSString *)lastName
                    fullName:(NSString *)fullName
                     details:(NSString *)details
                       image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _lastName = lastName;
        _fullName = fullName;
        _details = details;
        _image = image;
    }
    return self;
}

+ (Detalle *)subdivisionWithName:(NSString *)name
                        lastName:(NSString *)lastName
                         details:(NSString *)details
                           image:(UIImage *)image
{
    return [[Detalle alloc] initWithName:name
                                lastName:lastName
                                fullName:[NSString stringWithFormat:@"%@ %@",name,lastName]
                                 details:details
                                   image:image];
}

@end
