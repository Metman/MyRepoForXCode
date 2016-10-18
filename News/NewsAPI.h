//
//  MySingletonClass.h
//  News
//
//  Created by Максим Филимонов on 18.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsAPI : NSObject

+(instancetype)sharedInstance;

@end
