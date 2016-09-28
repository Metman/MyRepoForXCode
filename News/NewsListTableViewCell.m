//
//  NewsListTableViewCell.m
//  News
//
//  Created by Максим Филимонов on 22.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import "NewsListTableViewCell.h"


@implementation NewsListTableViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setNewsItem:(NewsItem *)newsItem {
   
    [_bgImage setImage:newsItem.image];
    [_newsTitleLabel setText:newsItem.title];
    
    [_newsSubtitleLabel setText:newsItem.text];
    [_datenewsLabel setText:newsItem.date];
    


}

@end
