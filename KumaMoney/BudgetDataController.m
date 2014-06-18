//
//  BudgetDataController.m
//  KumaMoney
//
//  Created by 김영진 on 2014. 6. 18..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import "BudgetDataController.h"

@interface BudgetDataController()

-(void) initializeBudgetData;
-(void) initializeBaseDateForView;

@end

@implementation BudgetDataController
@synthesize baseDateForView;
@synthesize totalBalance;
@synthesize totalEarning;
@synthesize totalSpending;

+(BudgetDataController *) getBudgetDataController
{
    static BudgetDataController * budgetDataController = nil;
    
    if ( budgetDataController == nil )
    {
        @synchronized(self)
        {
            if ( budgetDataController == nil )
            {
                budgetDataController = [[BudgetDataController alloc] init];
            }
        }
    }
    
    return budgetDataController;
}

-(id)init
{
    self = [super init];
    
    if ( self )
    {
        [self initializeBudgetData];
        [self initializeBaseDateForView];
        
        return self;
    }
    
    return nil;
}

-(void)initializeBudgetData
{
    self.totalBalance = @"1,234,567,890";
    self.totalEarning = @"123,456,789";
    self.totalSpending = @"12,345,678";
}

-(void)initializeBaseDateForView
{
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"MM"];
    int month = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    
    [dateFormatter setDateFormat:@"dd"];
    int date = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    
    [dateFormatter setDateFormat:@"E"];
    NSString * day = [dateFormatter stringFromDate:[NSDate date]];
    
    baseDateForView = [NSString stringWithFormat:@"%d월 %d일 ( %@ )", month, date, day];
}

@end
