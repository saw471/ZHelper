//
//  Helper.h
//  ZhiBoYuan
//
//  Created by mac on 2018/4/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Header.h"
//#import "Reachability.h"
//#import "UINavigationBar+Awesome.h"

//#import "KeChengDetailVC.h"
//#import "AdetailViewController.h"
#import <SystemConfiguration/SCNetworkReachability.h>


#define leiXing_P @"leiXing"
#define xueKe_p @"xueKe"
#define nianJi_P @"nianJi"
#define xueDuan_p @"xueDuan"
#define zhiShiDian_p @"zhiShiDian"

//leiXing = 1;
//nianJi = 10;
//xueDuan = 3;
//xueKe = 7;
//zhiShiDian = "";

typedef NS_ENUM(NSInteger,NetType){
    NetTypeNone,
    NetTypeWifi,
    NetTypeGPRS,
    NetType4G,
    NetType3G,
    NetType2G,
    NetTypeUNKnown
};

//typedef void(^netType)(NetType type);


@interface Helper : NSObject

+ (void)setMoRenNav:(UINavigationController *)navigationController;
+ (void)setNavColorFrom:(UINavigationController *)navigationController color:(UIColor *)color;

/**  tabbar默认颜色  */
+ (void)setMoRenTabBar:(UITabBarController *)tabBarController ;
/**  修改tabbar 背景 颜色  */
+ (void)setTab:(UITabBarController *)tabBarController backGroundColor:(UIColor *)backGroundColor;

///**  修改tabbar 更多 颜色  */
+ (void)setNavColorFromNvc:(UINavigationController *)navigationController
          backColor:(UIColor *)backColor
        tittleColor:(UIColor *)tittleColor
        buttonColor:(UIColor *)buttonColor;

/**  创建颜色图片  */
+ (UIImage *)imageWithColor:(UIColor *)color ;
/**  网络判断  */
//+ (NSInteger) netBoolType;

/**  去导航条底部黑线  */
+ (UIImageView *)findHairlineImageViewUnder:(UIView *)view ;


+(NSString *)filterHTML:(NSString *)html;


/*  字符串是否包含另一个字符串  */
+ (BOOL)stringBool:(NSString *)string subStr:(NSString *)substr;

/*  图片富文本 图+文 */
+ (NSAttributedString*)attributedString:(NSString *)str imageName:(NSString *)imageName imageFram:(CGRect)imageFram;

/**  图片富文本 文+图+文  */
//+ (NSAttributedString*)attributedString:(NSString *)str imageName:(NSString *)imageName secondStr:(NSString *)secondStr  imageFram:(CGRect)imageFram;

+ (NSAttributedString*)attributedString:(NSString *)str imageName:(NSString *)imageName secondStr:(NSString *)secondStr secondStrColor:(UIColor *)secondStrColor imageFram:(CGRect)imageFram;

+(NSString *)stringFromArr:(NSMutableArray *)arr;
+(NSString *)stringFromArr:(NSMutableArray *)arr key:(NSString *)key;


/*  课程详情页  */
+(void)keChengDetailFromVC:(UIViewController *)ViewController course_id:(NSString *)course_id ;

/*  筛选数据序列化  */
+ (NSMutableDictionary *)shaiXuanFromArr:(NSMutableArray *)arr;
+ (NSMutableDictionary *)newShaiXuanFromDictionary:(NSMutableDictionary *)dictionary;



/*  去掉字符串最后一个字符  */
+(NSString*) removeLastOneChar:(NSString*)origin;


+(void)userSave:(NSString *)user;
+(NSString *)redUser;
+(void)delUser;

/**  获取Window当前显示的ViewController  */
+ (UIViewController*)currentViewController;

/**  网页加载图片  */
+ (NSString *)htmlForJPGImage:(UIImage *)image;


/**
 collectionView 注册cell

 @param collectionView <#collectionView description#>
 @param ident <#ident description#>
 @param isNib <#isNib description#>
 */
+ (void)collectionViewRegistCellFrom:(UICollectionView *)collectionView  ident:(NSString *)ident isNib:(BOOL)isNib;


/**
 <#Description#>
 
 @param view 传入要变圆角的视图
 @param size 自己根据需要设置角度大小
 @param left <#left description#>
 @param right <#right description#>
 @param bottomLeft <#bottomLeft description#>
 @param bottomRight <#bottomRight description#>
 */
+ (void)renYiYuanJiao:(UIView *)view size:(CGSize)size left:(BOOL)left right:(BOOL)right bottomLeft:(BOOL)bottomLeft bottomRight:(BOOL)bottomRight;


@end
