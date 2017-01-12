//
//  UatRequest.m
//  ICODE
//
//  Created by ITApp2 on 2017/1/9.
//  Copyright © 2017年 ITApp2. All rights reserved.
//


#import "AFHTTPSessionManager.h"
#import "DevRequest.h"

@implementation DevRequest

-(NSURLSessionDataTask*) DoApiRequest:(NSString*)
                             funId:(NSString*)
                             apiId: (NSDictionary*) param
                             success:(void (^)(NSData *responseObject))success
                             failure:(void (^)(NSDictionary  *Msg))failure
{   

    NSDictionary*jsonData=[NSDictionary alloc];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"webapiUrl" ofType:@"plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSString *targetWebApiUrl = [data objectForKey:@"GetCustDtl"];
    AFHTTPSessionManager *http=[[AFHTTPSessionManager alloc] init];
     http.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", nil];
    
    return [http POST:targetWebApiUrl
           parameters:param
constructingBodyWithBlock:^(id <AFMultipartFormData> formData){  }
              success:^(NSURLSessionDataTask * _Nonnull task, id responseObject)
            {
                success(responseObject);               
                
            }
              failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {}];
};

-(void)Output :(NSString*)message{
    NSLog(@"Dev");
}

@end
