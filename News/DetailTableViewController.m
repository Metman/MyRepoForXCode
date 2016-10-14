//
//  DetailTableViewController.m
//  News
//
//  Created by Максим Филимонов on 11.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import "DetailTableViewController.h"

@interface DetailTableViewController ()

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    [self setNewsItemDetail:_newsItemDetail];
    [self.tableView reloadData];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44;
    
    
    NSString *nibName = NSStringFromClass([DetailTableViewCell class]);
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    
    NSString *nibCellName = NSStringFromClass([ImageTableViewCell class]);
    UINib *nibCell = [UINib nibWithNibName:nibCellName bundle:nil];
    
    [self.tableView registerNib:nib forCellReuseIdentifier:nibName];
    [self.tableView registerNib:nibCell forCellReuseIdentifier:nibCellName];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *reuseId = NSStringFromClass([DetailTableViewCell class]);
    NSString *reusableCellWithImage = NSStringFromClass([ImageTableViewCell class]);

    
    if (indexPath.row == 0){
    
        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId
                                                                    forIndexPath:indexPath];
        
        [cell.titleNews setText:_newsItemDetail.title];
    
        return cell;

    }
    
    
    if(indexPath.row == 1) {
    
        ImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableCellWithImage forIndexPath:indexPath];
       
        [cell.imageNews setImageWithURL:_newsItemDetail.imageURL];
        
        return cell;

    
    }
    
    if(indexPath.row == 2) {
        
        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId
                                                                    forIndexPath:indexPath];
        
        [cell.titleNews setText:_newsItemDetail.text];
        
        return cell;
        
    }
    
    if(indexPath.row == 3){

        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId
                                                                    forIndexPath:indexPath];
        
        [cell.titleNews setText:_newsItemDetail.date];
    
        return cell;

    }
    
    return nil;
    
    }


@end
