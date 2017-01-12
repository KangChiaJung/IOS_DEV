//
//  APIClientFactory.h
//  ICODE
//
//  Created by ITApp2 on 2017/1/9.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseRequest.h"
#import "DevRequest.h"

@interface APIClientFactory : NSObject

-(BaseRequest*) getInstance;

@end
