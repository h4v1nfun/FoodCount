//
//  Food.m
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import "Food.h"

@interface Food ()

@end

@implementation Food


-(NSArray *)buildDefaultFoodArray {
    return [self buildFoodArrayWithNumberOfFoods:10];
}

-(NSArray *)buildFoodArrayWithNumberOfFoods:(NSInteger)numberOfFoods {
    
    NSMutableArray* foodArray = [[NSMutableArray alloc] initWithCapacity:numberOfFoods];
    for (int i = 0; i < numberOfFoods; i++) {
        Food* food = [[Food alloc] init];
        food.foodType = @"Vegetaljbljjpjjljlhuohu";
        food.foodName = @"Brocolioçijioojojojiojojo";
        food.dateOfConsumption = [NSDate dateWithTimeIntervalSinceNow:-200];
        
        [foodArray addObject:food];
    }
    
    return  [foodArray copy];
}


@end
