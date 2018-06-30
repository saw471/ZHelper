//
//  NetworkUrl.h
//  ZhiBoYuan
//
//  Created by JW on 2018/4/23.
//  Copyright © 2018年 apple. All rights reserved.
//

#ifndef NetworkUrl_h
#define NetworkUrl_h

#pragma mark -  Network
static NSString * const NetworkHost = @"http://rapi.rrnjnx.com/index.php?";

//接口相关
#define Host_Append(path) [NSString stringWithFormat:@"%@%@",NetworkHost,path]

#pragma mark - 相关接口分类标注


#pragma mark - 登陆 注册相关

//登陆接口
static NSString * const Login_accountNumber = @"g=Client&m=Login&a=login";

//注册接口
static NSString * const Register_accountNumber = @"g=Client&m=Register&a=regUser";

//请求验证码
static NSString * const VerificationCode = @"g=Client&m=Register&a=getSmsCode";

//忘记密码
static NSString * const Reset_accountPasswd = @"g=Client&m=Ucenter&a=backPwd";

//
#pragma mark - 首页接口
static NSString * const HomePageDatas = @"g=Client&m=Index&a=indexList";


#pragma mark - 任务相关

#pragma mark - 课程接口
//课程列表接口
static NSString * const CourseList = @"g=Client&m=Course&a=liveList";

//课程详情
static NSString * const CourseDetail = @"g=Client&m=Course&a=courseDetail";
//课程大纲
static NSString * const CourseOutline = @"g=Client&m=Course&a=chaperList";

//课程评论
static NSString * const CourseComment = @"g=Client&m=Comment&a=courseCommentList";

//随堂练习 & 课后习题
static NSString * const CourseExercises = @"g=Client&m=Course&a=khxt";

//请求视频播放权限
static NSString * const VideoToken = @"g=Client&m=Course&a=play";

//套餐下课程列表
static NSString * const PackageCourseList = @"g=Client&m=Course&a=packageCourseList";

//获取章节习题列表
static NSString * const ChapterQuestionList = @"g=Client&m=Question&a=chapterQuestionListForApp";

//获取试卷习题列表
static NSString * const PaperQuestionList = @"g=Client&m=Question&a=PaperQuestionListForApp";

//  g=Client&m=Question&a=getQuestion
static NSString * const CheckOneQuestions = @"g=Client&m=Question&a=getQuestion";

//提交做题结果
static NSString * const SubmitTestResult = @"g=Client&m=Question&a=submitChapterPaper";

//获取某分院下课程
static NSString * const BranchCourseList = @"g=Client&m=Course&a=getFenyuanCourseList";

//获取课程分享信息
static NSString * const GetCoureShareInfo = @"g=Client&m=Ucenter&a=getShareCourseInfo";
//单个课题的解析
static NSString * const QuestionInfo = @"g=Client&m=Question&a=QuestionAnalysis";

#pragma mark - 个人页面

#endif /* NetworkUrl_h */
