//
//  Food.h
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (nonatomic, strong) NSString* foodType;
@property (nonatomic, strong) NSString* foodName;
@property (nonatomic, strong) NSDate* dateOfConsumption;

-(NSArray *)buildDefaultFoodArray;

@end
