//
//  MyCollectionViewCell.h
//  News
//
//  Created by Максим Филимонов on 15.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface MyCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageViewCell;
//@property (nonatomic,strong) NewsItem *imageItem;
@end
