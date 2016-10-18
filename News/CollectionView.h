//
//  CollectionView.h
//  
//
//  Created by Максим Филимонов on 15.10.16.
//
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"
#import "MyCollectionViewCell.h"

@interface CollectionView : UICollectionView <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic,strong) NewsItem *itemNewsCell;

@end
