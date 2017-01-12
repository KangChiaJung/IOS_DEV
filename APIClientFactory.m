//
//  APIClientFactory.m
//  ICODE
//
//  Created by ITApp2 on 2017/1/9.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import "APIClientFactory.h"


@implementation APIClientFactory

-(BaseRequest*) getInstance
{
    return [[DevRequest alloc]init];
}

@end
