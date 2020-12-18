//
//  HFNewFeatureCollectionViewController.m
//  caipiaoDemo
//
//  Created by renjinwei on 2020/12/16.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFNewFeatureCollectionViewController.h"
#import "HFNewFeatureCollectionViewCell.h"
#import "HFRootVCManager.h"

//@interface UIView (XMG)
//
//// 在分类中 @property 不会帮你实现 _成员属性, 仅仅是在头文件中声明get set方法, 需要在.m文件中实现get, set方法
//
//@property (nonatomic, assign) CGFloat width;
//
//@property (nonatomic, assign) CGFloat height;
//
//@property (nonatomic, assign) CGFloat x;
//
//@property (nonatomic, assign) CGFloat y;
//
//@end
//
//
//@implementation UIView (XMG)
//- (CGFloat)width{
//    return self.frame.size.width;
//}
//
//- (void)setWidth:(CGFloat)width{
//    CGRect frame = self.frame;
//    frame.size.width = width;
//    self.frame = frame;
//}
//
//
//- (CGFloat)height{
//    return self.frame.size.height;
//}
//
//- (void)setHeight:(CGFloat)height{
//    CGRect frame = self.frame;
//    frame.size.height = height;
//    self.frame = frame;
//}
//
//- (CGFloat)x{
//    return self.frame.origin.x;
//}
//
//- (void)setX:(CGFloat)x{
//    CGRect frame = self.frame;
//    frame.origin.x = x;
//    self.frame = frame;
//}
//
//- (CGFloat)y{
//    return self.frame.origin.y;
//}
//- (void)setY:(CGFloat)y{
//    CGRect frame = self.frame;
//    frame.origin.y = y;
//    self.frame = frame;
//}
//@end


@interface HFNewFeatureCollectionViewController () <HFNewFeatureCollectionViewCellProtocol>
@property (nonatomic, weak) UIImageView *guideImageView;
@property (nonatomic, weak) UIImageView *guideLargeTextImageView;
@property (nonatomic, weak) UIImageView *guideSmallTextImageView;
@property (nonatomic, assign) CGFloat lastOffsetX;

@end

@implementation HFNewFeatureCollectionViewController

static NSString * const reuseIdentifier = @"Cell";
- (instancetype)init{
    UICollectionViewFlowLayout* layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = [UIScreen mainScreen].bounds.size;
    
    return [super initWithCollectionViewLayout: layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[HFNewFeatureCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
//    self.collectionView.backgroundColor = [UIColor blueColor];
    
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
}
- (void)btnClicked:(UIButton *)btn
{
    NSLog(@"btn clicked");
    [[HFRootVCManager sharedInstance] switchMainVC];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

//
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}
//
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"cell:%ld", indexPath.item);
    HFNewFeatureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSString* imageName = [NSString stringWithFormat:@"guide%ldBackground", indexPath.item + 1];
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    cell.backgroundView.contentMode = UIViewContentModeScaleToFill;
    // Configure the cell
    
    NSString* guideName = [NSString stringWithFormat:@"guide%ld", indexPath.item + 1];
    cell.guideImage = [UIImage imageNamed:guideName];

    NSString* largeTextName = [NSString stringWithFormat:@"guideLargeText%ld", indexPath.item + 1];
    cell.guideLargeTextImage = [UIImage imageNamed:largeTextName];

    NSString* smallTextName = [NSString stringWithFormat:@"guideSmallText%ld", indexPath.item + 1];
    cell.guideSmallTextImage = [UIImage imageNamed:smallTextName];
    cell.delegate = self;
    if (indexPath.item == 3)
    {
        cell.startBtn.hidden = NO;
    }
    return cell;
}

@end

