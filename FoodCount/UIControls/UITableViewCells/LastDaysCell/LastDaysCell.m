//
//  LastDaysCell.m
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import "LastDaysCell.h"
#import "NSString+DateUtilities.h"

@interface LastDaysCell ()

@property (weak, nonatomic) IBOutlet UILabel *foodTypeLbl;
@property (weak, nonatomic) IBOutlet UILabel *nameOfFoodLbl;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;

@end

@implementation LastDaysCell


-(void)setFood:(Food *)food {
    
    if (food) {
        [self.foodTypeLbl setText:food.foodType];
        [self.nameOfFoodLbl setText:food.foodName];
        [self.dateLbl setText:[NSString stringFromDate:food.dateOfConsumption]];
        
        [self layoutIfNeeded];
    }
}

@end
