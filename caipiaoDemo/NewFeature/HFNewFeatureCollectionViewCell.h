//
//  HFNewFeatureCollectionViewCell.h
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/17.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HFNewFeatureCollectionViewCellProtocol <NSObject>
- (void)btnClicked:(UIButton*)btn;
@end

@interface HFNewFeatureCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) UIImage *guideImage;
@property (nonatomic, strong) UIImage *guideLargeTextImage;
@property (nonatomic, strong) UIImage *guideSmallTextImage;
@property (nonatomic, strong) UIButton* startBtn;
@property (nonatomic, weak) id<HFNewFeatureCollectionViewCellProtocol> delegate;
@end

NS_ASSUME_NONNULL_END
