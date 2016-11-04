//
//  ViewController.m
//  demo01
//
//  Created by bokeadmin on 2016/11/4.
//  Copyright © 2016年 bokeadmin. All rights reserved.
//

#import "STMainViewController.h"

@interface STMainViewController ()

@end

@implementation STMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Setup
    [self setupUI];
}

#pragma mark - Setup
- (void)setupUI {
    // Hello button
    UIButton *helloButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [helloButton setTitle:@"hello" forState:UIControlStateNormal];
    [helloButton addTarget:self action:@selector(onHelloButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:helloButton];
    
    helloButton.translatesAutoresizingMaskIntoConstraints = NO; // If you want to use Auto Layout to dynamically calculate the size and position of your view, you must set this property to NO.
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:helloButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:60.0],
                                [NSLayoutConstraint constraintWithItem:helloButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:40.0],
                                [NSLayoutConstraint constraintWithItem:helloButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:helloButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]
                                ]];
}

#pragma mark - Action
- (void)onHelloButtonClicked:(id)sender{
    NSLog(@"Hello, world!");
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello" message:@"Hello world!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cacelAction = [UIAlertAction actionWithTitle:@"Cacel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        NSLog(@"Cacel Action");
    }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Ok Action");
    }];
    [alertController addAction:cacelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
