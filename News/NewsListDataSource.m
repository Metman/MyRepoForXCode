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
            [_newsItemArray addObject:newsItem];
        }
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Лицо Следственного комитета: Владимир Маркин уходит в отставку";
            newsItem.text = @"Один из самых известных ньюсмейкеров по линии силовых ведомств России, официальный представитель Следственного комитета Владимир Маркин подал заявление об отставке.";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c637930/v637930269/1463a/IMc2KmvFWOY.jpg"];
            newsItem.date = @"27.9.16, 10:00";
            [_newsItemArray addObject:newsItem];
        }
        
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Специалисты IHS Markit подсчитали стоимость компонентов iPhone 7";
            newsItem.text = @"По подсчетам IHS Markit, все компоненты iPhone 7 с 32 ГБ флэш-памяти стоят $219,80. Добавив расходы на за сборку, оцениваемые в $5, аналитики пришли к выводу, что выпуск одного экземпляра iPhone 7 обходится Apple в $224,80.";
                        newsItem.date = @"26.9.16, 10:00";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c636021/v636021281/2f8bf/YRldZxMSRUo.jpg"];
            [_newsItemArray addObject:newsItem];
        }
        
        
        {
            NewsItem *newsItem = [NewsItem new];
            newsItem.title = @"Rockstar анонсировала байкерское обновление для GTA Online";
            newsItem.text = @"Скоро все любители двухколёсных железных коней смогут вдоволь порезвиться в GTA Online. Компания Rockstar объявила о том, что в скором будущем в сетевой версии Grand Theft Auto V появится возможность формировать байкерские группировки (клубы) с участием до восьми игроков";
            
            newsItem.date = @"25.9.16, 10:00";
            newsItem.imageURL = [NSURL URLWithString:@"https://pp.vk.me/c637217/v637217813/11eb7/0mhstEDvkPk.jpg"];
            [_newsItemArray addObject:newsItem];
        }

        
        
    }
    return self;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                          bundle:nil];
    
    
    DetailViewController *viewController = (DetailViewController *)[storyboard
                                                                        instantiateViewControllerWithIdentifier:NSStringFromClass([DetailViewController class])];
    
    

    viewController.newsItemDetail = _newsItemArray;
    
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
