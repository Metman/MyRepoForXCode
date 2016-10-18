//
//  CollectionView.m
//  
//
//  Created by Максим Филимонов on 15.10.16.
//
//

#import "CollectionView.h"

@implementation CollectionView


- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame: frame];
    if(self){
        
        self.delegate = self;
        self.dataSource = self;
        
        [self setItemNewsCell:_itemNewsCell];
        
//        NSString *cellClassId = NSStringFromClass([MyCollectionViewCell class]);
//    
//        [self registerClass:([MyCollectionViewCell class]) forCellWithReuseIdentifier:cellClassId];
        
        NSString *nibName = NSStringFromClass([MyCollectionViewCell class]);
        
        UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
        
        [self registerNib:nib forCellWithReuseIdentifier:nibName];
        
    
        [self reloadData];
        NSLog(@"CollectionViewLoad");
    
    
    }
    return self;
}

#pragma mark - CollectionView data source

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 1;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Collection cell load");
    
    NSString *reuseId = NSStringFromClass([MyCollectionViewCell class]);
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseId forIndexPath:indexPath];
    
    if(!cell) {
    
        cell = [MyCollectionViewCell new];
    
    }
    [cell.imageViewCell setImageWithURL:_itemNewsCell.arrayWithImagesURL[1]];
        // Configure the cell
    
    return cell;
}

@end
