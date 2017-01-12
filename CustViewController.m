//
//  CustViewController.m
//  ICODE
//
//  Created by ITApp2 on 2017/1/12.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import "CustViewController.h"

@interface CustViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *HomeButton;

@property (weak, nonatomic) IBOutlet UIView *containView;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *BackButton;

@end

@implementation CustViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"left_back"]
                                                                  style:UIBarButtonItemStylePlain
                                                                  target:self.navigationController
                                                                  action:@selector(popViewControllerAnimated:)];    
    backButton.tintColor=[UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = backButton;
    self.containView.layer.borderColor =  [UIColor colorWithRed:(230/255.0) green:(173/255.0) blue:(53/255.0) alpha:1].CGColor;
    self.containView.layer.borderWidth = 3.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BackClick:(id)sender {

}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
  
}

@end
