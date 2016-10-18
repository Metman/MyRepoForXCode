//
//  CollectionView.m
//  
//
//  Created by Максим Филимонов on 15.10.16.
//
//

#import "CollectionView.h"

@implementation CollectionView

-(instancetype)init {
    self = [super init];
    if(self) {
        [self initCollView];
    
    
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame: frame];
    if(self){
        
        [self initCollView];
    
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithFrame: frame collectionViewLayout:layout];
    if(self){
        
        [self initCollView];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        
        [self initCollView];
        
    }
    return self;
}

-(void)initCollView {


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

#pragma mark - CollectionView data source

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

    CGSize size;
    size.width = self.bounds.size.width;
    size.height = 200;
    
    
    
    return size;
};



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [_itemNewsCell.arrayWithImagesURL count];
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Collection cell load");
    
    NSString *reuseId = NSStringFromClass([MyCollectionViewCell class]);
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseId forIndexPath:indexPath];
    
    if(!cell) {
    
        cell = [MyCollectionViewCell new];
    
    }
    [cell.imageViewCell setImageWithURL:_itemNewsCell.arrayWithImagesURL[indexPath.row]];
        // Configure the cell
    
    return cell;
}

@end
