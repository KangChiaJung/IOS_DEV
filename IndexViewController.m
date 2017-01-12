//
//  IndexViewController.m
//  ICODE
//
//  Created by ITApp2 on 2017/1/11.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import "IndexViewController.h"
#import "CustViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController

- (IBAction)Selected:(id)sender {
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"IndexSegue"])
    {
        CustViewController *controller = (CustViewController *)segue.destinationViewController;
        controller.CustNo=@"123";
    }
}


@end
