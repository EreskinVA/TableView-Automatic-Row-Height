//
//  ViewController.m
//  tableView112
//
//  Created by Alexey Levanov on 27/05/2019.
//  Copyright © 2019 Alexey Levanov. All rights reserved.
//

#import "ViewController.h"
#import "ABCTableViewCell.h"
#import "ABCTwoTableViewCell.h"
#import "ABCThreeTableViewCell.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *newsTableView;

@end


@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	[self.view addSubview:self.newsTableView];
    
    [self.newsTableView registerClass:[ABCTwoTableViewCell class] forCellReuseIdentifier:@"CellTwo"];
    
    [self.newsTableView registerClass:[ABCThreeTableViewCell class] forCellReuseIdentifier:@"CellThree"];
    
    self.newsTableView.estimatedRowHeight = 80.0f;
    self.newsTableView.rowHeight = UITableViewAutomaticDimension;
    
}


#pragma mark - Getter

- (UITableView *)newsTableView
{
	if (_newsTableView)
	{
		return _newsTableView;
	}
	
	_newsTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
	_newsTableView.delegate = self;
	_newsTableView.dataSource = self;
	
	return _newsTableView;
}


#pragma mark - TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row % 2 == 0)
    {
        ABCTwoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellTwo"];

        cell.title = @"Очень Очень Очень Очень длинный текст";
        cell.subtitle = @"Очень Очень Очень Очень Очень Очень Очень Очень Очень Очень длинный текст";
        
        return cell;
    } else
    {
        ABCThreeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellThree"];

        cell.title = @"Очень Очень Очень Очень длинный текст";
        cell.subtitle = @"Очень Очень Очень Очень Очень Очень Очень Очень Очень Очень длинный текст";
        
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"Тут перейдем на деталку");
}


@end
