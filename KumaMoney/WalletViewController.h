//
//  WalletViewController.h
//  KumaMoney
//
//  Created by kuma on 2014. 6. 14..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WalletViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton * baseDate;
@property (weak, nonatomic) IBOutlet UILabel * totalBalance;
@property (weak, nonatomic) IBOutlet UILabel * totalEarning;
@property (weak, nonatomic) IBOutlet UILabel * totalSpending;

@end
