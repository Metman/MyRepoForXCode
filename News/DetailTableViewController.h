//
//  DetailTableViewController.h
//  News
//
//  Created by Максим Филимонов on 11.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"
#import "DetailTableViewCell.h"
#import "ImageTableViewCell.h"

@interface DetailTableViewController : UITableViewController
@property(nonatomic,strong) NewsItem *newsItemDetail;


@end
