//
//  HFSettingItem.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/13.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef  void(^operationBlock)(NSIndexPath* indexPath);

@interface HFSettingItem : NSObject

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, copy) NSString* title;

@property (nonatomic, copy) NSString* subTitle;

@property (nonatomic, strong) operationBlock operation;

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString*)title;

+ (instancetype)itemWithTitle:(NSString*)title;


@end
