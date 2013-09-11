//
//  EWSAPIClient.m
//  EWS
//
//  Created by Jay Chae  on 9/10/13.
//  Copyright (c) 2013 JCLab. All rights reserved.
//

#import "EWSAPIClient.h"
#import "AFHTTPClient.h"
#import "AFJSONRequestOperation.h"

NSString *const API_URL = @"http://ews-api.herokuapp.com";

@implementation EWSAPIClient


+ (EWSAPIClient *)sharedAPIClient {
    static EWSAPIClient *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[EWSAPIClient alloc] initWithBaseURL:[NSURL URLWithString:API_URL]];
    });
    return sharedInstance;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    
    if (self) {
        [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
        [self setDefaultHeader:@"Accept" value:@"application/json"];
    }
    return self;
}


@end