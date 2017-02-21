//
//  PXViewController.m
//  UIImageView_AFNetworking-Blocks
//
//  Created by Daniel Blakemore on 04/13/2015.
//  Copyright (c) 2014 Daniel Blakemore. All rights reserved.
//

#import "PXViewController.h"

#import <UIImageView_AFNetworking-Blocks/UIImageView+AFNetworking_Blocks.h>

@interface PXViewController ()

@end

@implementation PXViewController
{
    UIButton * _succeedButton;
    UIButton * _failButton;
    
    UIImageView * _imageView1;
    UIImageView * _imageView2;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[UIButton appearance] setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];

    _succeedButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_succeedButton setFrame:CGRectMake(80, 100, 150, 40)];
    [_succeedButton setTitle:@"Load" forState:UIControlStateNormal];
    [_succeedButton addTarget:self action:@selector(succeedPressed) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:_succeedButton];
    
    _imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 150, 275, 150)];
    [_imageView1 setContentMode:UIViewContentModeScaleAspectFit];
    [_imageView1 setBackgroundColor:[UIColor lightGrayColor]];
    [[self view] addSubview:_imageView1];
    
    _failButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_failButton setFrame:CGRectMake(80, 320, 150, 40)];
    [_failButton setTitle:@"Fail to Load" forState:UIControlStateNormal];
    [_failButton addTarget:self action:@selector(failPressed) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:_failButton];
    
    _imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 370, 275, 150)];
    [_imageView2 setContentMode:UIViewContentModeScaleAspectFit];
    [_imageView2 setBackgroundColor:[UIColor lightGrayColor]];
    [[self view] addSubview:_imageView2];
}

- (void)succeedPressed
{
    [_imageView1 setImageWithURL:[NSURL URLWithString:@"http://www.pixio.com/images/pixio-logo.png"] completion:^(UIImageView *imageView) {
        NSLog(@"loaded");
    }];
}

- (void)failPressed
{
    [_imageView2 setImageWithURL:[NSURL URLWithString:@"nope.nope"] completion:^(UIImageView *imageView) {
        NSLog(@"failed");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
