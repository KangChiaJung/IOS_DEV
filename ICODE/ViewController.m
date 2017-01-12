//
//  ViewController.m
//  ICODE
//
//  Created by ITApp2 on 2017/1/9.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import "ViewController.h"
#import "APIClientFactory.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *NavSegment;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    APIClientFactory *c=[[APIClientFactory alloc]init];
    BaseRequest *request=c.getInstance;
    
    [request DoApiRequest:@""
                       :@""
                       :nil
                       success:^(NSData *responseObject) {
                        
                           
                           
                           
                      
                      } failure:^(NSDictionary  *MSG_Dic) {
                      
                      
                          
                          
                          
                      
                      
                      
                      }];
    
  
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
