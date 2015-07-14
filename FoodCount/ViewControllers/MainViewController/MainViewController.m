//
//  MainViewController.m
//  FoodCount
//
//  Created by Afonso Cavaco Neto on 14/07/15.
//  Copyright (c) 2015 Afonso Neto. All rights reserved.
//

#import "MainViewController.h"
#import "Food.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkBtn;

@property (strong, nonatomic) NSArray* foodArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.addBtn setTitle:@"+" forState:UIControlStateNormal];
    [self.checkBtn setTitle:@"Check" forState:UIControlStateNormal];
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
    [self.view.layer setOpacity:55.F];
    
    Food* food = [[Food alloc] init];
    self.foodArray = [food buildDefaultFoodArray];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
