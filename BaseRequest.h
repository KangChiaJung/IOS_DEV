//
//  BaseRequest.h
//  ICODE
//
//  Created by ITApp2 on 2017/1/9.
//  Copyright © 2017年 ITApp2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseRequest : NSObject

-(NSURLSessionDataTask*) DoApiRequest:(NSString*)
                                funId:(NSString*)
                                apiId: (NSDictionary*) param
                              success:(void (^)(NSData *responseObject))success
                              failure:(void (^)(NSDictionary  *Msg))failure;

-(void)Output :(NSString*)message;

@end
