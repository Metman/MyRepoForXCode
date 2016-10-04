//
//  DetailNewsDatasource.m
//  News
//
//  Created by Максим Филимонов on 03.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import "DetailNewsDatasource.h"

@implementation DetailNewsDatasource




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    NewsItem* newsItemFromArray = _newsItemArray[indexPath.row];
//    
//    
    NSString *reuseId = NSStringFromClass([DetailNewsTableViewCell class]);
    DetailNewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId
                                                                  forIndexPath:indexPath];
    
    if (!cell){
        cell = [[DetailNewsTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                            reuseIdentifier:reuseId];
    }
    
 
    
    return cell;
}


@end
