//
//  NewsItem.h
//  News
//
//  Created by Максим Филимонов on 22.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NewsItem : NSObject

@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *text;
@property(nonatomic,strong) NSURL *imageURL;
@property(nonatomic, strong) NSString *date;

@end
