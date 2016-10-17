//
//  ImageTableViewCell.h
//  News
//
//  Created by Максим Филимонов on 14.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionView.h"

@interface ImageTableViewCell : UITableViewCell 

@property (weak, nonatomic) IBOutlet CollectionView *collectionViewImages;
 

@end
