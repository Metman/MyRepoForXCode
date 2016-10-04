//
//  DetailNewsTableViewCell.h
//  News
//
//  Created by Максим Филимонов on 30.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"


@interface DetailNewsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak,nonatomic) NewsItem *newsItemForCell;


@end
