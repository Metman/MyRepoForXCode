//
//  DetailViewController.h
//  News
//
//  Created by Максим Филимонов on 04.10.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailNewsDatasource.h"
#import "NewsItem.h"

@interface DetailViewController : UIViewController
@property(nonatomic,strong) NewsItem *newsItemDetail;



@end
