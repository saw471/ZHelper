//
//  Home.h
//
//  Created by mac on 2017/10/24.
//  Copyright © 2017年 CNTek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Home : NSObject

@property(nonatomic,copy)    NSString *   name;
@property(nonatomic,copy)    NSString *   id;
@property(nonatomic,assign)  CGFloat    cellHeight;

@property(nonatomic,assign)  CGFloat    cellwidth;
@property(nonatomic,copy)    NSString *  content;

 - (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


@interface NetParameter : NSObject
/**  身份证号  */
@property (nonatomic,copy)   NSString *       idCode;
/**  名称  */
@property (nonatomic,copy)   NSString *       realName;

@end


@interface Task : NSObject
/**    */
@property (nonatomic,copy)   NSString *       class_list;
/**    */
@property (nonatomic,copy)   NSString *       course_count;
/**    */
@property (nonatomic,copy)   NSString *       create_time;
/**    */
@property (nonatomic,copy)   NSString *       detail;
/**    */
@property (nonatomic,copy)   NSString *       id;
/**    */
@property (nonatomic,copy)   NSString *       paper_count;
/**    */
@property (nonatomic,copy)   NSString *       status;
/**    */
@property (nonatomic,copy)   NSString *       teacher_id;
/**    */
@property (nonatomic,copy)   NSDictionary *       user_info;
/**    */
@property (nonatomic,copy)   NSString *       work_time;
/**    */
@property (nonatomic,copy)   NSString *       name;
/**    */
@property (nonatomic,copy)   NSString *   is_free;

/**    */
@property (nonatomic,copy)   NSString *   do_send_course;

/**  评论数  */
@property (nonatomic,copy)   NSString *   pineLuncount;


//@property (nonatomic,copy)   NSString *   count;






//"class_list" = "\U5316\U5b663\U73ed\Uff0c\U8bed\U65871\U73ed\Uff0c";
//"course_count" = 0;
//"create_time" = "2018-04-24 15:59:51";
//detail = "\U5b57\U4f53\U5de5\U6574";
//id = 77;
//"is_free" = 0;
//name = "\U6284\U5199\U5341\U904d";
//"paper_count" = 0;
//status = 0;
//"teacher_id" = 106;
//"user_info" =         {
//    "big_img" = "http://zby2018.oss-cn-beijing.aliyuncs.com/80.png";
//    "middle_img" = "http://zby2018.oss-cn-beijing.aliyuncs.com/80.png";
//    name = qqqqqqqqq;
//    "small_img" = "http://zby2018.oss-cn-beijing.aliyuncs.com/80.png";
//};
//"work_time" = "2018-06-25 17:58:00";

 - (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


@interface Paper : NSObject

@property (nonatomic,copy)   NSString *       id;
@property (nonatomic,copy)   NSString *       total_question;
@property (nonatomic,copy)   NSString *       name;
@property (nonatomic,copy)   NSString *       create_time;

 - (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


@interface Course : NSObject

@property (nonatomic,copy)   NSString *       id;
@property (nonatomic,copy)   NSString *       total_question;
@property (nonatomic,copy)   NSString *       name;
@property (nonatomic,copy)   NSString *       create_time;
@property (nonatomic,copy)   NSString *       image_url;
@property (nonatomic,copy)   NSString *       is_free;
@property (nonatomic,copy)   NSString *       learning_num;
@property (nonatomic,copy)   NSString *       price;
@property (nonatomic,copy)   NSString *       teacher_id;
@property (nonatomic,copy)   NSString *       type;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


@interface Questiion : NSObject

@property (nonatomic,copy)   NSString *       id;
@property (nonatomic,copy)   NSString *       hard_level;// 难度
@property (nonatomic,copy)   NSString *       answer;  // 回到
@property (nonatomic,copy)   NSString *       analysis; // 分析
@property (nonatomic,copy)   NSString *       ques_model;
@property (nonatomic,copy)   NSString *       ques_stem_text;

//"hard_level" = 2,
//"id" = 815,
//"answer" = <p>这是俯拾地芥吉林省京东方链接了实际代理费极乐世界邓丽君送礼就</p>,
//"analysis" = <p>是的反腐<br/></p>,
//"ques_model" = 2,
//"ques_stem_text" = 士大夫撒旦,

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end


@interface ShaiXuan : NSObject

@property (nonatomic,copy)   NSString *       xueDuan;
@property (nonatomic,copy)   NSString *       xueKe;
@property (nonatomic,copy)   NSString *       nianJi;
@property (nonatomic,copy)   NSString *       zhiShiDian;
@property (nonatomic,copy)   NSString *       leiXing; 

@property (nonatomic,copy)   NSString *       fenlei; //分类 直播课 微课




//@"xueDuan",@"xueKe",@"nianJi",@"zhiShiDian",@"leiXing"

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end



@interface JsonHelp : NSObject

@property (nonatomic,copy) id msg;
@property (nonatomic,copy) id data;
@property (nonatomic,copy) id status;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end






