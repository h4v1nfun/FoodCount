//
//  NSString+DateUtilities.m
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import "NSString+DateUtilities.h"

@implementation NSString (DateUtilities)


+(NSString *)stringFromDate:(NSDate *)date {
    
    if (date) {
    
        // TODO PREVENT ALLOC EVERYTIME
        NSDateFormatter* format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"DD/MM/YYYY"];
        
        return [format stringFromDate:date];
        
    }
    
    return nil;
}

@end
