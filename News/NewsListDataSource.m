//
//  NewsListDataSource.m
//  News
//
//  Created by Максим Филимонов on 22.09.16.
//  Copyright © 2016 Максим Филимонов. All rights reserved.
//


#import "NewsListDataSource.h"


@interface NewsListDataSource()

    
@property NSMutableArray *newsItemArray;
    


@end


@implementation NewsListDataSource

- (instancetype)init{
    self = [super init];
    if(self){
        
        
        
        _newsItemArray = [NSMutableArray new];
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Керри заявил о чувстве параллельной вселенной";
            newsItem.text = @"Джон Керри заявил, что у него возникло чувство «параллельной реальности» во время речи Сергея Лаврова, посвященной ситуации в Сирии. Противоречия России и США обострились после обстрела гуманитарного конвоя в провинции Алеппо 19 сентября.";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c637331/v637331414/11058/Vibr4RxITTU.jpg"];
            newsItem.date = @"Сегодня, 10:00";
            
            NSURL *imageURL = [NSURL URLWithString:
                               @"https://pp.vk.me/c637331/v637331414/11058/Vibr4RxITTU.jpg"];
            
            NSURL *otherImageURL = [NSURL URLWithString:
                                    @"https://pp.vk.me/c637930/v637930269/1463a/IMc2KmvFWOY.jpg"];
            
            newsItem.arrayWithImagesURL = [NSMutableArray arrayWithObjects:imageURL,otherImageURL, nil];
            
            [_newsItemArray addObject:newsItem];
        }
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Лицо Следственного комитета: Владимир Маркин уходит в отставку";
            newsItem.text = @"Один из самых известных ньюсмейкеров по линии силовых ведомств России, официальный представитель Следственного комитета Владимир Маркин подал заявление об отставке.";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c637930/v637930269/1463a/IMc2KmvFWOY.jpg"];
            newsItem.date = @"27.9.16, 10:00";
            
            NSURL *imageURL = [NSURL URLWithString:
                              @"https://pp.vk.me/c637930/v637930269/1463a/IMc2KmvFWOY.jpg" ];
            
            NSURL *otherImageURL = [NSURL URLWithString:
                                    @"https://pp.vk.me/c637331/v637331414/11058/Vibr4RxITTU.jpg"];
            
            newsItem.arrayWithImagesURL = [NSMutableArray arrayWithObjects:imageURL,otherImageURL, nil];

            
            [_newsItemArray addObject:newsItem];
        }
        
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Специалисты IHS Markit подсчитали стоимость компонентов iPhone 7";
            newsItem.text = @"По подсчетам IHS Markit, все компоненты iPhone 7 с 32 ГБ флэш-памяти стоят $219,80. Добавив расходы на за сборку, оцениваемые в $5, аналитики пришли к выводу, что выпуск одного экземпляра iPhone 7 обходится Apple в $224,80.";
                        newsItem.date = @"26.9.16, 10:00";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c636021/v636021281/2f8bf/YRldZxMSRUo.jpg"];
            
            NSURL *imageURL = [NSURL URLWithString:
                               @"https://pp.vk.me/c636021/v636021281/2f8bf/YRldZxMSRUo.jpg"];
            
            NSURL *otherImageURL = [NSURL URLWithString:
                                    @"https://pp.vk.me/c604323/v604323645/2ce4c/pT7aubJAy3g.jpg"];
            
            NSURL *elseImageURL = [NSURL URLWithString:@"https://pp.vk.me/c638019/v638019052/2177/RTXV8Lc2tkE.jpg"];
            
            newsItem.arrayWithImagesURL = [NSMutableArray arrayWithObjects:imageURL,otherImageURL, elseImageURL, nil];

            [_newsItemArray addObject:newsItem];
        }
        
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Rockstar анонсировала байкерское обновление для GTA Online";
            newsItem.text = @"Скоро все любители двухколёсных железных коней смогут вдоволь порезвиться в GTA Online. Компания Rockstar объявила о том, что в скором будущем в сетевой версии Grand Theft Auto V появится возможность формировать байкерские группировки (клубы) с участием до восьми игроков";
            
            newsItem.date = @"25.9.16, 10:00";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c637217/v637217813/11eb7/0mhstEDvkPk.jpg"];
            
            NSURL *imageURL = [NSURL URLWithString:
                               @"https://pp.vk.me/c637217/v637217813/11eb7/0mhstEDvkPk.jpg"];
            
            NSURL *otherImageURL = [NSURL URLWithString:
                                    @"https://pp.vk.me/c636425/v636425371/3cae1/HccKJ9UxTJ0.jpg"];
            
            newsItem.arrayWithImagesURL = [NSMutableArray arrayWithObjects:imageURL,otherImageURL, nil];

            
            [_newsItemArray addObject:newsItem];
        }

        
        
    }
    return self;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
        for(int i = 0; i < 5000; i++){
        NSLog(@"%d", i);
    };
    
    });
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                          bundle:nil];
    
    
    DetailTableViewController *viewController = (DetailTableViewController *)[storyboard
                                                                        instantiateViewControllerWithIdentifier:NSStringFromClass([DetailTableViewController class])];
    
    
    

    viewController.newsItemDetail = _newsItemArray[indexPath.row];
    
    
    [_otherVC.navigationController pushViewController:viewController animated:YES];

    
    NSLog(@"Cell selected");
    
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_newsItemArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NewsItem* newsItemFromArray = _newsItemArray[indexPath.row];
    
    
    NSString *reuseId = NSStringFromClass([NewsListTableViewCell class]);
    NewsListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId
                                                            forIndexPath:indexPath];
    
    if (!cell){
        cell = [[NewsListTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:reuseId];
    }

    cell.newsItem = newsItemFromArray;
    
    
    
    
    NSLog(@"cell load");
    NSLog(@"%@", newsItemFromArray.title);
    
    return cell;
}


@end
