//
//  Detalle.h
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Detalle : UITableViewCell

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSString *fullName;
@property (nonatomic, readonly) NSString *details;
@property (nonatomic, readonly) UIImage *image;

- (instancetype)initWithName:(NSString *)name
                    lastName:(NSString *)lastName
                    fullName:(NSString *)fullName
                     details:(NSString *)details
                       image:(UIImage *)image;

+ (Detalle *)subdivisionWithName:(NSString *)name
                        lastName:(NSString *)lastName
                         details:(NSString *)details
                           image:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
