#import <UIKit/UIKit.h>

@interface UIView (SMFrameAdditions)

@property (nonatomic, assign) CGPoint $origin;
@property (nonatomic, assign) CGSize $size;
@property (nonatomic, assign) CGFloat $x, $y, $width, $height; // normal rect properties
@property (nonatomic, assign) CGFloat $left, $top, $right, $bottom; // these will stretch the rect

- (void)set$bottomByStretching:(CGFloat)bottom;
- (NSString *)frameDescription;
@end
