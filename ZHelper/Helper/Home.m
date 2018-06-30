//
//  Home.m
//
//  Created by mac on 2017/10/24.
//  Copyright © 2017年 CNTek. All rights reserved.
//

#import "Home.h"

@implementation Home
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"id"]) {
        
        //           self.productID = value;
        //           return;
    }
    
}




// 手动计算 方法3代码
- (CGFloat)cellHeight
{
    // 文字的最大尺寸(设置内容label的最大size，这样才可以计算label的实际高度，需要设置最大宽度，但是最大高度不需要设置，只需要设置为最大浮点值即可)，53为内容label到cell左边的距离
    CGSize maxSize = CGSizeMake((ScreenWidth- 30 - 2*(2+1)) / 2, MAXFLOAT);

    // 计算内容label的高度
    CGFloat textH = [self.name boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil].size.height;

    /*
     昵称label和cell的顶部为0
     17为昵称label的高度
     8.5为昵称label和内容label的间距
     textH为内容label的高度
     304为内容image的高度
     */
    _cellHeight = textH +20;

    return _cellHeight;
}


// 手动计算 方法3代码
- (CGFloat)cellwidth{
    // 文字的最大尺寸(设置内容label的最大size，这样才可以计算label的实际高度，需要设置最大宽度，但是最大高度不需要设置，只需要设置为最大浮点值即可)，53为内容label到cell左边的距离
    CGSize maxSize = CGSizeMake((ScreenWidth- 30 - 2*(2+1)) / 2, 50);
    
    // 计算内容label的高度
    CGFloat textH = [self.name boundingRectWithSize:maxSize
                                            options:NSStringDrawingUsesLineFragmentOrigin
                                         attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil].size.width;
    
    /*
     昵称label和cell的顶部为0
     17为昵称label的高度
     8.5为昵称label和内容label的间距
     textH为内容label的高度
     304为内容image的高度
     */
    _cellwidth = textH;
    
    return _cellwidth;
}






@end



@implementation NetParameter

@end



@implementation Task

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"count"]) {
        
        self.pineLuncount = value;
        return;
        
        
    }
    
}

@end


@implementation Paper
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"id"]) {
        
        //           self.productID = value;
        //           return;
    }
    
}
@end


@implementation Course
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"id"]) {
        
        //           self.productID = value;
        //           return;
    }
    
}
@end


@implementation Questiion
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"id"]) {
        
        //           self.productID = value;
        //           return;
    }
    
}
@end



@implementation ShaiXuan
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {return;}
    [super setValue:value forKey:key];
}

//对未定义key的处理方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
//    if([key isEqualToString:@"leiXing"]) {
//
////        self.leiXing = @"";
//
//    }
    self.leiXing = @"";
    
    self.fenlei = @"";
    
    
    
    
}
@end


@implementation JsonHelp
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if ([dictionary isKindOfClass:[NSDictionary class]]) {
        if (self = [super init]) {
            [self setValuesForKeysWithDictionary:dictionary];
        }
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:[NSNull class]]) {
        return;
    }
    [super setValue:value forKey:key];
}


/**  对未定义key的处理方法  */
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"id"]) {
        
        //           self.productID = value;
        //           return;
    }
    
}
@end
