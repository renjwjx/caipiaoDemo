//
//  HFNewFeatureCollectionViewCell.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/17.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFNewFeatureCollectionViewCell.h"

@interface HFNewFeatureCollectionViewCell()
@property (nonatomic, strong) UIImageView *guideImageView;
@property (nonatomic, strong) UIImageView *guideLargeTextImageView;
@property (nonatomic, strong) UIImageView *guideSmallTextImageView;
@end

@implementation HFNewFeatureCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _guideImageView = [[UIImageView alloc] init];
        [self addSubview:_guideImageView];
        _guideLargeTextImageView = [[UIImageView alloc] init];
        [self addSubview:_guideLargeTextImageView];
        _guideSmallTextImageView = [[UIImageView alloc] init];
        [self addSubview:_guideSmallTextImageView];
    }
    return self;
}

- (UIButton *)startBtn
{
    if (!_startBtn) {
        _startBtn = [[UIButton alloc] init];
        [_startBtn setImage:[UIImage imageNamed:@"guideStart"] forState:(UIControlStateNormal)];
        [_startBtn sizeToFit];
        
        CGPoint center = CGPointMake(self.contentView.frame.size.width * 0.5, self.contentView.frame.size.height * 0.9);
        _startBtn.center = center;
        _startBtn.hidden = YES;
        [_startBtn addTarget:self action:@selector(startBtnClicked:) forControlEvents:(UIControlEventTouchUpInside)];
        [self.contentView addSubview:_startBtn];
    }
    return _startBtn;
}

- (void)startBtnClicked:(UIButton*)btn
{
    NSLog(@"btn clicked");
    if ([self.delegate respondsToSelector:@selector(btnClicked:)]) {
        [self.delegate btnClicked:btn];
    }
}

- (void)layoutSubviews
{
    _guideLargeTextImageView.center = CGPointMake(self.frame.size.width * 0.5f, self.frame.size.height * 0.7);
    _guideSmallTextImageView.center = CGPointMake(self.frame.size.width * 0.5f, self.frame.size.height * 0.8);
}

- (void)setGuideImage:(UIImage *)guideImage
{
    self.guideImageView.image = guideImage;
    [self.guideImageView sizeToFit];
}

- (void)setGuideLargeTextImage:(UIImage *)guideLargeTextImage
{
    self.guideLargeTextImageView.image = guideLargeTextImage;
    [self.guideLargeTextImageView sizeToFit];
}

- (void)setGuideSmallTextImage:(UIImage *)guideSmallTextImage
{
    self.guideSmallTextImageView.image = guideSmallTextImage;
    [self.guideSmallTextImageView sizeToFit];
}

@end
