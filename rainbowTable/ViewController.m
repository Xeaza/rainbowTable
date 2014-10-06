//
//  ViewController.m
//  rainbowTable
//
//  Created by Taylor Wright-Sanson on 10/6/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property int colorCounter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colorCounter = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 500;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCellId"];

    UIColor *color = [self getColor:indexPath.row];
    cell.backgroundColor = color;
        return cell;
}

- (UIColor *)getColor: (NSInteger)indexPath {
    UIColor *color = [[UIColor alloc] init];

    float random1 = arc4random() % 255;
    float random2 = arc4random() % 255;

    for (float i = 0.0; i <= indexPath; i++) {
        color = [UIColor colorWithRed:(i/255.0) green:(random1/255.0) blue:(random2/255.0) alpha:1.0];
    }
    return color;
}

@end
