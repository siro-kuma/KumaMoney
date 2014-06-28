//
//  BudgetDataController.h
//  KumaMoney
//
//  Created by kuma on 2014. 6. 18..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BudgetDataController : NSObject
{
    NSString * baseDateForView;
    
    NSString * totalBalance;
    NSString * totalEarning;
    NSString * totalSpending;
}

@property (nonatomic, strong) NSString * baseDateForView;

@property (nonatomic, strong) NSString * totalBalance;
@property (nonatomic, strong) NSString * totalEarning;
@property (nonatomic, strong) NSString * totalSpending;

+(BudgetDataController *) getBudgetDataController;

@end
