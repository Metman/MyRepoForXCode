//
//  NewsListTableViewCell.h
//  News
//
//  Created by Максим Филимонов on 22.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"
#import <GradientView/GradientView.h>
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface NewsListTableViewCell : UITableViewCell

@property (nonatomic, weak) NewsItem *newsItem;
@property(nonatomic, weak) IBOutlet UIImageView *bgImage;
@property(nonatomic,weak) IBOutlet UILabel *newsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *datenewsLabel;

@end
