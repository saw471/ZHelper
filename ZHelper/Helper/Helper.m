//
//  Helper.m
//  ZhiBoYuan
//
//  Created by mac on 2018/4/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "Helper.h"
#import "UINavigationController+NavLine.h"

#import "UINavigationBar+Awesome.h"

#define  userNmaetext @"userNmaetext"

@implementation Helper


+ (void)setMoRenNav:(UINavigationController *)navigationController
{
    [navigationController.navigationBar lt_setBackgroundColor:[UIColor grayColor]];
    // 背景颜色
    [navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    // 标题字颜色
    [navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor blackColor]}];
    // 左右按钮颜色
    navigationController.navigationBar.tintColor = [UIColor blackColor];
    //    navigationController.navigationBar.shadowImage = [UIImage new];

}

+ (void)setNavColorFrom:(UINavigationController *)navigationController color:(UIColor *)color
{
    if ([color isEqual:[UIColor clearColor]])
    {
        navigationController.navigationBar.shadowImage = [UIImage new];
    }
    else
    {
        navigationController.navigationBar.shadowImage = [self imageWithColor:hui1Color];
    }
    
    [navigationController.navigationBar lt_setBackgroundColor:color];

}

+ (void)setNavColorFromNvc:(UINavigationController *)navigationController
          backColor:(UIColor *)backColor
        tittleColor:(UIColor *)tittleColor
        buttonColor:(UIColor *)buttonColor
{
    [navigationController.navigationBar lt_setBackgroundColor:[UIColor grayColor]];
    // 背景颜色
    [navigationController.navigationBar setBarTintColor:backColor];
    // 标题字颜色
    [navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:tittleColor}];
    // 左右按钮颜色
    navigationController.navigationBar.tintColor = buttonColor;
    
    if ([backColor isEqual:[UIColor clearColor]])
    {
        navigationController.navigationBar.shadowImage = [UIImage new];
    }
    else
    {
        navigationController.navigationBar.shadowImage = [self imageWithColor:hui1Color];
    }
    navigationController.navigationBar.shadowImage = [UIImage new];

}

+ (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0)
    {
        return (UIImageView *)view;
    }
    
    for (UIView *subview in view.subviews)
    {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}




+ (void)setMoRenTabBar:(UITabBarController *)tabBarController {

    // 新主题色 tab
    tabBarController.tabBar.backgroundColor = [UIColor whiteColor];
    tabBarController.tabBar.tintColor = ZhuTiColor;
    tabBarController.tabBar.translucent = YES;
    tabBarController.tabBar.shadowImage = [self imageWithColor:hui1Color]; //
//    tabBarController.tabBar.backgroundImage = [self imageWithColor:[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1]];
    tabBarController.tabBar.backgroundImage = [self imageWithColor:[UIColor  whiteColor]];
    tabBarController.tabBar.alpha = 1;
    
}


+ (void)setTab:(UITabBarController *)tabBarController backGroundColor:(UIColor *)backGroundColor{
    
    // 新主题色 tab
    tabBarController.tabBar.backgroundColor = [UIColor whiteColor];
    tabBarController.tabBar.tintColor = ZhuTiColor;
    tabBarController.tabBar.translucent = YES;
    tabBarController.tabBar.shadowImage = [self imageWithColor:hui1Color];
    //    tabBarController.tabBar.backgroundImage = [self imageWithColor:[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1]];
    tabBarController.tabBar.backgroundImage = [self imageWithColor:backGroundColor];
    tabBarController.tabBar.alpha = 1;
    
}


+ (UIImage *)imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f,0.0f, 1.0f,1.0f);
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    UIImage *image =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
    
}

//// 网络是否可用
//+ (NSInteger) netBoolType {
//    NSInteger netconnType;
//    Reachability *reach = [Reachability reachabilityWithHostName:@"www.baidu.com"];
//    switch ([reach currentReachabilityStatus]) {
//        case NotReachable:// 没有网络
//        {
//
//            NSLog(@"没网啊");
//            netconnType = 0;
//
//        }
//            break;
//
//        case ReachableViaWiFi:// Wifi
//        {
//            netconnType = 1;
//            NSLog(@"Wifi");
//        }
//            break;
//
//        case ReachableViaWWAN:// 手机自带网络
//        {
//            // 获取手机网络类型
//            netconnType =2;
//            NSLog(@"4G网络");
//        }
//            break;
//    }
//
//    NSLog(@"%zd",netconnType);
//    return netconnType;
//
//}

/*  去html标签  */
+(NSString *)filterHTML:(NSString *)html
{
    NSScanner * scanner = [NSScanner scannerWithString:html];
    NSString * text = nil;
    while([scanner isAtEnd]==NO)
    {
        [scanner scanUpToString:@"<" intoString:nil];
        [scanner scanUpToString:@">" intoString:&text];
        html = [html stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@""];
    }
    return html;
}



+ (BOOL)stringBool:(NSString *)string subStr:(NSString *)substr {

    if([string rangeOfString:substr].location != NSNotFound)
    {
        NSLog(@"包含");
        return YES;
    }  else  {
        NSLog(@"不包含");
        return NO;
    }
}


+ (NSAttributedString*)attributedString:(NSString *)str imageName:(NSString *)imageName imageFram:(CGRect)imageFram {
    //创建富文本
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:str];
    
    
    [attri addAttribute:NSForegroundColorAttributeName value:hui5Color range:NSMakeRange(0,str.length)];
    //NSTextAttachment可以将要插入的图片作为特殊字符处理
    NSTextAttachment *attch = [[NSTextAttachment alloc] init];
    //定义图片内容及位置和大小
    attch.image = [UIImage imageNamed:imageName];
    
    if (imageFram.size.width > 0) {
       attch.bounds = imageFram;
    }else{
        attch.bounds = CGRectMake(0, -1, 12, 12);
    }
    
    //创建带有图片的富文本
    NSAttributedString *string = [NSAttributedString attributedStringWithAttachment:attch];
    
    //将图片放在最后一位
    //[attri appendAttributedString:string];
    //将图片放在第一位
    [attri insertAttributedString:string atIndex:0];
    //用label的attributedText属性来使用富文本
    
    
    return attri;
    
}

+ (NSAttributedString*)attributedString:(NSString *)str imageName:(NSString *)imageName secondStr:(NSString *)secondStr secondStrColor:(UIColor *)secondStrColor imageFram:(CGRect)imageFram {
    //创建富文本
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:str];
    
    
    [attri addAttribute:NSForegroundColorAttributeName value:hui5Color range:NSMakeRange(0,str.length)];
    //NSTextAttachment可以将要插入的图片作为特殊字符处理
    NSTextAttachment *attch = [[NSTextAttachment alloc] init];
    //定义图片内容及位置和大小
    attch.image = [UIImage imageNamed:imageName];
    
    if (imageFram.size.width > 0) {
        attch.bounds = imageFram;
    }else{
        attch.bounds = CGRectMake(0, -1, 12, 12);
    }
    
    //创建带有图片的富文本
    NSAttributedString *string = [NSAttributedString attributedStringWithAttachment:attch];
    
    //将图片放在最后一位
    [attri appendAttributedString:string];
    //将图片放在第一位
//    [attri insertAttributedString:string atIndex:0];
    //用label的attributedText属性来使用富文本

    NSMutableAttributedString *attrSe = [[NSMutableAttributedString alloc] initWithString:secondStr];
    [attrSe addAttribute:NSForegroundColorAttributeName value:secondStrColor range:NSMakeRange(0,secondStr.length)];
    
    // 第二个文本 放在最后一位
    [attri  appendAttributedString:attrSe];
    
    
    return attri;
    
}



+(NSString *)stringFromArr:(NSMutableArray *)arr {
    
    
    NSString * pramer = [NSString string];
    
    for (NSString *str in arr) {
        
        pramer =  [pramer stringByAppendingString:str];
        pramer =  [pramer stringByAppendingString:@","];
        
    }
    pramer = [pramer substringToIndex:pramer.length-1];
    
    return pramer;
    
}


+(NSString *)stringFromArr:(NSMutableArray *)arr key:(NSString *)key{
    
    
    NSString * pramer = [NSString string];
    
    for (NSDictionary *dic in arr) {
        
        pramer =  [pramer stringByAppendingString:dic[key]];
        pramer =  [pramer stringByAppendingString:@"，"];
        
    }
    pramer = [pramer substringToIndex:pramer.length-1];
    
    return pramer;
    
}


+(void)keChengDetailFromVC:(UIViewController *)ViewController course_id:(NSString *)course_id {
    
    //新课程详情
    
//    KeChengDetailVC *vc = [[KeChengDetailVC alloc]init];
//
//    vc.course_id = course_id;
//
//    vc.hidesBottomBarWhenPushed = YES;
//
//    [ViewController.navigationController pushViewController:vc animated:YES];
//
    
    
}



+ (NSMutableDictionary *)shaiXuanFromArr:(NSMutableArray *)arr {
    
    
    NSMutableArray *arrID = [NSMutableArray array];
    
    NSMutableArray * shaiXuanArr = [NSMutableArray array];

    for (int i = 0 ; i < arr.count; i++)
    {
        
        if ( i == 3 ) //知识点多个
        {
            for (NSDictionary *dic in arr[i])
            {
                [arrID addObject:dic[@"id"]];
            }
            
            [shaiXuanArr addObject:arrID];
        }else{
//            if (arr[i])
//            {
                for (NSDictionary *dic  in arr[i])
                {
                    [shaiXuanArr addObject:dic[@"id"]];
                }
                
//            }
//            else
//            {
//                [shaiXuanArr  addObject:@""];
//            }
        }
    }
    
//    NSString *is_free = @"";
//
//    if (shaiXuanArr.count == 5)
//    {
//        is_free = shaiXuanArr[4];
//    }
//
    if (shaiXuanArr.count > 3) {
        NSArray *zsdArr = shaiXuanArr [3];
        
        NSString * knowledge_point_id = [NSString string];
        
        if (zsdArr.count > 0)
        {
            //        knowledge_point_id = [Helper stringFromArr:shaiXuanArr[3]];// 多参数后台报错
            knowledge_point_id = shaiXuanArr[3][0]; // 只传一个知识点
        }
        
        shaiXuanArr [3] = knowledge_point_id;
    }

    


    
    NSMutableArray *keyArr = @[@"xueDuan",@"xueKe",@"nianJi",@"zhiShiDian",@"leiXing"].mutableCopy;
    
    
    if (shaiXuanArr.count == 6) {
        
        [keyArr addObject:@"fenlei"];
        
    }
    
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    
    
//    NNSLog(@"%zd=== %zd",keyArr.count,shaiXuanArr.count);
    
    
    if (shaiXuanArr.count == 4) {
        [shaiXuanArr insertObject:@[] atIndex:4];
        
    }
    

    for (int  i = 0; i < keyArr.count; i++)
    {
        NSString *key = keyArr[i];
        
        NSString *value = shaiXuanArr[i];
        
//        if (i == 3 ) {
//            [dic setValue:knowledge_point_id forKey:key];
//
//        }else if (i==4) {
//            [dic setValue:is_free forKey:key];
//        }else{
            [dic setValue:value forKey:key];
//        }
        
    }
    

    NSLog(@"%@",dic);
    
    return dic;
    
}



+ (NSMutableDictionary *)newShaiXuanFromDictionary:(NSMutableDictionary *)dictionary {
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    
    NSArray *nameArr = [dictionary allKeys];

    
    for (int  i = 0; i < nameArr.count ; i++)
    {
        NSString *key = nameArr[i];

        NSMutableArray *arr = [dictionary valueForKey:nameArr[i]];

        NSString *value = arr.firstObject[@"id"];

        NSLog(@"%@ =555= %@",key,value);
        
        if (i == 3)
        {
            NSString * knowledge_point_id = [NSString string];
            
            if (arr.count > 0)
            {
                knowledge_point_id = arr.firstObject[@"id"];// 只传一个知识点
            }
            
            [dic setValue:knowledge_point_id forKey:key];
            
        }
        if (value.length <= 0) {
            
            value = @"";
            
        }
        
         [dic setValue:value forKey:key];

//        if (value.length > 0) {
//            if (i<=2)
//            {
//                [dic setValue:value forKey:key];
//
//            }
//            else  if (i == 3)
//            {
//
//                NSString * knowledge_point_id = [NSString string];
//
//                if (arr.count > 0)
//                {
//                    knowledge_point_id = arr.firstObject[@"id"];// 只传一个知识点
//                }
//
//                [dic setValue:knowledge_point_id forKey:key];
//
//            }
//
//        }else{
//            [dic setValue:@"0" forKey:key];
//        }
//
//
    }

    return dic;
    
}




+(NSString*) removeLastOneChar:(NSString*)origin
{
    NSString* cutted;
    if([origin length] > 0){
        cutted = [origin substringToIndex:([origin length]-1)];// 去掉最后一个","
    }else{
        cutted = origin;
    }
    return cutted;
}


+(void)userSave:(NSString *)user
{
    
    
    NSUserDefaults *use = [NSUserDefaults standardUserDefaults];
    
    [use setObject:user forKey:userNmaetext];
    
    [use synchronize];
    
}

+(NSString *)redUser
{
    NSUserDefaults *use = [NSUserDefaults standardUserDefaults];
    return [use objectForKey:userNmaetext];
}

+(void)delUser
{
    NSUserDefaults *use = [NSUserDefaults standardUserDefaults];
    [use removeObjectForKey:userNmaetext];
    [use synchronize];
}



/**  网络判断  */

//- (void)checkNetWorkTrans:(void(^)(NetType type))typeBlock{
//    AFNetworkReachabilityManager *managerAF = [AFNetworkReachabilityManager sharedManager];
//    [managerAF startMonitoring];
//    [managerAF setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        switch (status) {
//            case AFNetworkReachabilityStatusUnknown:
//                
//                typeBlock(NetTypeUNKnown);
//                NSLog(@"未知的网络类型");
//                break;
//            case AFNetworkReachabilityStatusReachableViaWiFi:
//                NSLog(@"通过WIFI上网");
//                typeBlock(NetTypeWifi);
//                break;
//            case AFNetworkReachabilityStatusReachableViaWWAN:
//                NSLog(@"通过3G/4G上网");
//                typeBlock(NetTypeGPRS);
//                break;
//            case AFNetworkReachabilityStatusNotReachable:
//                NSLog(@"当前网络不可达");
//                
//                typeBlock(NetTypeNone);
//                break;
//        }
//    }];
//}

//- (NSString *)internetStatusOriginal {
//    SCNetworkReachabilityRef reachability = NULL;
//    SCNetworkConnectionFlags connectionFlags = 0;
//    if (!reachability) {
//        BOOL ignoresAdHocWifi = NO;
//        struct sockaddr_in ipAddress;
//        bzero(&ipAddress, sizeof(ipAddress));
//        ipAddress.sin_len = sizeof(ipAddress);
//        ipAddress.sin_family = AF_INET;
//        ipAddress.sin_addr.s_addr = htonl(ignoresAdHocWifi ? INADDR_ANY : IN_LINKLOCALNETNUM);
//        reachability = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, (struct sockaddr *)&ipAddress);
//    }
//
//    //设置监听网络改变
//    SCNetworkReachabilityContext context = {0, (__bridge void*)self,NULL,NULL,NULL};
//    if (SCNetworkReachabilitySetCallback(reachability, reachabilityCallBack, &context))
//    {
//        if (SCNetworkReachabilityScheduleWithRunLoop(reachability, CFRunLoopGetCurrent(), kCFRunLoopCommonModes))
//        {
//            NSLog(@"绑定成功！！");
//        }
//    }
//    //判断网络连接情况
//    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(reachability, &connectionFlags);
//    if (!didRetrieveFlags)
//    {
//        NSLog(@"Error. Could not recover network reachability flags");
//    }
//    if ((connectionFlags & kSCNetworkFlagsReachable) != 0)
//    {
//        return @"网络可达";
//    }
//    else if ((connectionFlags & kSCNetworkFlagsConnectionRequired) != 0)
//    {
//        return @"需要连接";
//    }
//    else
//    {
//        return @"网络不可达";
//    }
//}


//// 计算SDWebImage本地缓存图片大小
//+ (NSString *)getCacheSize {
//    float tmpSize = [[SDImageCache sharedImageCache] getSize];
//    NSLog(@"%f",tmpSize);
//    NSString *size =
//    tmpSize/1024 <= 1024 ?
//    [NSString stringWithFormat:@"%.1fK",tmpSize/1024] :
//    [NSString stringWithFormat:@"%.1fM",tmpSize/1024/1024];
//    return size;
//
//}
//// 清理图片缓存
//+(void)cleanDisk {
//    [[SDImageCache sharedImageCache] clearDisk]; // 清理本地缓存的图片
//
//    [[SDImageCache sharedImageCache] clearMemory]; // 清理内存图片
//}


//获取Window当前显示的ViewController
+ (UIViewController*)currentViewController{
    //获得当前活动窗口的根视图
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1)
    {
        //根据不同的页面切换方式，逐步取得最上层的viewController
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    }
    return vc;
}



//编码图片
+ (NSString *)htmlForJPGImage:(UIImage *)image
{
    NSData *imageData = UIImageJPEGRepresentation(image,1.0);
    NSString *imageSource = [NSString stringWithFormat:@"data:image/jpg;base64,%@",[imageData base64Encoding]];
    NSString *stringImage =  [NSString stringWithFormat:@"<img src = \"%@\" />", imageSource];
    
    //构造内容
    NSString *contentImg = [NSString stringWithFormat:@"%@", stringImage];
    NSString *content =[NSString stringWithFormat:
                        @"<html>"
                        "<style type=\"text/css\">"
                        "<!--"
                        "body{font-size:40pt;line-height:60pt;}"
                        "-->"
                        "</style>"
                        "<body>"
                        "%@"
                        "</body>"
                        "</html>"
                        , contentImg];
    
    
    
    return content;
    
}


+ (void)collectionViewRegistCellFrom:(UICollectionView *)collectionView  ident:(NSString *)ident isNib:(BOOL)isNib
{
    if (isNib)
    {
        [collectionView registerNib:[UINib nibWithNibName:ident bundle:nil] forCellWithReuseIdentifier:ident];
    }
    else
    {
        [collectionView registerClass: NSClassFromString(ident) forCellWithReuseIdentifier:ident];
    }
}


/**
 
 view
 
 size
 
 后面的4个角 BOOL 1 是设置该角为圆角 0 不改变
 
 */

/**
 <#Description#>

 @param view 传入要变圆角的视图
 @param size 自己根据需要设置角度大小
 @param left <#left description#>
 @param right <#right description#>
 @param bottomLeft <#bottomLeft description#>
 @param bottomRight <#bottomRight description#>
 */
+ (void)renYiYuanJiao:(UIView *)view size:(CGSize)size left:(BOOL)left right:(BOOL)right bottomLeft:(BOOL)bottomLeft bottomRight:(BOOL)bottomRight {
    
    UIRectCorner Left = 0;
    
    UIRectCorner Right = 0;
    
    UIRectCorner BottomLeft = 0;
    
    UIRectCorner BottomRight = 0;
    
    if (left) {
        
        Left = UIRectCornerTopLeft;
        
    }
    
    if (right) {
        
        Right = UIRectCornerTopRight;;
        
    }
    
    if (bottomLeft) {
        
        BottomLeft = UIRectCornerBottomLeft;
        
    }
    
    if (bottomRight) {
        
        BottomRight = UIRectCornerBottomRight;
        
    }
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:Left|Right|BottomLeft|BottomRight cornerRadii:size];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    
    maskLayer.frame = view.bounds;
    
    maskLayer.path = maskPath.CGPath;
    
    view.layer.mask = maskLayer;
    
}


@end
