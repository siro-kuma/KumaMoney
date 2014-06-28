//
//  WalletEditViewController.m
//  KumaMoney
//
//  Created by 김영진 on 2014. 6. 25..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import "WalletEditViewController.h"

@interface WalletEditViewController ()

@end

@implementation WalletEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closeEditViewButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
