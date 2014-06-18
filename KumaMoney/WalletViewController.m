//
//  WalletViewController.m
//  KumaMoney
//
//  Created by kuma on 2014. 6. 14..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import "WalletViewController.h"

#import "BudgetDataController.h"

@interface WalletViewController ()

@property (nonatomic, strong) BudgetDataController * budgetDataController;

@end

@implementation WalletViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.budgetDataController = [BudgetDataController getBudgetDataController];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.totalBalance.text = self.budgetDataController.totalBalance;
    self.totalEarning.text = self.budgetDataController.totalEarning;
    self.totalSpending.text = self.budgetDataController.totalSpending;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBaseDate:(UIButton *)baseDate
{
    [baseDate.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [baseDate.titleLabel setText:self.budgetDataController.baseDateForView];
}

@end
