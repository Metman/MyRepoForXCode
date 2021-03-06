//
//  TableViewController.h
//  News
//
//  Created by Максим Филимонов on 21.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"
#import "NewsListDataSource.h"
#import "NewsListTableViewCell.h"
#import "DetailTableViewController.h"

@interface NewsListTableViewController : UITableViewController


@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property(nonatomic,strong) NewsListDataSource *newsListDatasourceDelegate;

@end
