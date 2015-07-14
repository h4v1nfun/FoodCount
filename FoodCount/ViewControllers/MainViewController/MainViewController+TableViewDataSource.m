//
//  MainViewController+TableViewDataSource.m
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import "MainViewController+TableViewDataSource.h"
#import "LastDaysCell.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkBtn;

@property (strong, nonatomic) NSArray* foodArray;

@end

static NSString* LAST_DAYS_CELL = @"lastDaysCell";

@implementation MainViewController (TableViewDataSource)

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.foodArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LastDaysCell* cell = [tableView dequeueReusableCellWithIdentifier:LAST_DAYS_CELL forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[LastDaysCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:LAST_DAYS_CELL];
    }
    
    [cell setFood:[self.foodArray objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
