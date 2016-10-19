//
//  FengViewController.m
//  ImageRightButton
//
//  Created by fizix100 on 10/19/2016.
//  Copyright (c) 2016 fizix100. All rights reserved.
//

#import "FengViewController.h"
#import "ImageRightButton.h"

@interface FengViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTableView;
@property (nonatomic, strong) NSArray *arrayItems;

@end

@implementation FengViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI
{
    [self.view setBackgroundColor:[UIColor cyanColor]];
    
    [self.view addSubview:self.myTableView];
}

#pragma mark - Getter
- (UITableView *)myTableView
{
    if (!_myTableView) {
        _myTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [_myTableView setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
        [_myTableView setTableHeaderView:[[UIView alloc]initWithFrame:CGRectMake(0, 0, 1, 70)]];
        [_myTableView setTableFooterView:[[UIView alloc]initWithFrame:CGRectZero]];
        [_myTableView setBackgroundColor:[UIColor whiteColor]];
        [_myTableView setDataSource:self];
        [_myTableView setDelegate:self];
    }
    
    return _myTableView;
}

- (NSArray *)arrayItems
{
    if (!_arrayItems) {
        _arrayItems = @[@(0), @(1), @(2), @(3), @(4), @(5)];
    }
    
    return _arrayItems;
}

#pragma mark - Actions
- (void)btnImageRightClicked:(ImageRightButton *)btn
{
    btn.isImageRight = !btn.isImageRight;
    btn.selected = !btn.selected;
}

#pragma mark - UITableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        [cell.contentView setBackgroundColor:[UIColor whiteColor]];
        
        [cell.textLabel setFont:[UIFont systemFontOfSize:14]];
        
        ImageRightButton *btnTest = [[ImageRightButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(cell.contentView.bounds)-130, 7, 120, CGRectGetHeight(cell.contentView.bounds)-14)];
        [btnTest setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
        [btnTest setBackgroundColor:[UIColor whiteColor]];
        [btnTest.layer setBorderColor:[UIColor blackColor].CGColor];
        [btnTest.layer setBorderWidth:0.5];
        [btnTest.layer setCornerRadius:3.0];
        [btnTest setTitle:@"Left" forState:UIControlStateNormal];
        [btnTest setTitle:@"Right" forState:UIControlStateSelected];
        [btnTest setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [btnTest setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        [btnTest setImage:[UIImage imageNamed:@"btn_image_green"] forState:UIControlStateNormal];
        [btnTest setImage:[UIImage imageNamed:@"btn_image_red"] forState:UIControlStateSelected];
        [btnTest addTarget:self action:@selector(btnImageRightClicked:) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:btnTest];
        [btnTest setTag:100];
    }
    
    if (indexPath.row < self.arrayItems.count) {
        ImageRightButton *btnTest = (ImageRightButton *)[cell.contentView viewWithTag:100];
        NSNumber *number = [self.arrayItems objectAtIndex:indexPath.row];
        switch (number.integerValue) {
            case 0:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
                [cell.textLabel setText:@"HorizontalAlignment-Left"];
                break;
            case 1:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
                [cell.textLabel setText:@"HorizontalAlignment-Center"];
                break;
            case 2:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
                [cell.textLabel setText:@"HorizontalAlignment-Right"];
                break;
            case 3:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
                [cell.textLabel setText:@"HorizontalAlignment-Left"];
                break;
            case 4:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(6, 6, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
                [cell.textLabel setText:@"HorizontalAlignment-Center"];
                break;
            case 5:
                [btnTest setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [btnTest setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, 0)];
                [btnTest setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
                [cell.textLabel setText:@"HorizontalAlignment-Right"];
                break;
            default:
                break;
        }
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayItems.count;
}

@end
