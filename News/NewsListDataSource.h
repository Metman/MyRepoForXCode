//
//  NewsListDataSource.h
//  News
//
//  Created by Максим Филимонов on 22.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NewsItem.h"
#import "DetailtableViewController.h"
#import "NewsListTableViewCell.h"
#import "DetailTableViewCell.h"



@interface NewsListDataSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UIViewController *otherVC;



@end
