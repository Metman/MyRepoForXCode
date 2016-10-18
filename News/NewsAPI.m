//
//  MySingletonClass.m
//  News
//
//  Created by Максим Филимонов on 18.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import "NewsAPI.h"

@implementation NewsAPI

+(instancetype) sharedInstance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] initUniqueInstance];
    });
    return shared;

}

-(instancetype) initUniqueInstance {
    return [super init];
}

@end
