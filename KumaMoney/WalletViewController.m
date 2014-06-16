//
//  WalletViewController.m
//  KumaMoney
//
//  Created by kuma on 2014. 6. 14..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import "WalletViewController.h"

@interface WalletViewController ()

@end

@implementation WalletViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBaseDate:(UIButton *)baseDate
{
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"MM"];
    int month = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    
    [dateFormatter setDateFormat:@"dd"];
    int date = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    
    [dateFormatter setDateFormat:@"E"];
    NSString * day = [dateFormatter stringFromDate:[NSDate date]];
    
    [baseDate.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [baseDate.titleLabel setText:[NSString stringWithFormat:@"%d월 %d일 ( %@ )", month, date, day]];
}

@end
