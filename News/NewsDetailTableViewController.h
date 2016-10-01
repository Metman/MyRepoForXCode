//
//  NewsDetailTableViewController.h
//  News
//
//  Created by Максим Филимонов on 29.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsListDataSource.h"
#import "DetailNewsTableViewCell.h"
@interface NewsDetailTableViewController : UITableViewController
@property(nonatomic,strong) NewsListDataSource* DetailNewsDatasource;

@end
