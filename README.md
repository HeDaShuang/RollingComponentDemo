# RollingComponentDemo
自定义一个标签控件实现标签滚动效果
使用控件非常简单
1.将MasterRollingTitle.h和MasterRollingTitle.m拖入工程
2.初始化，并且添加到对应的视图层
    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30, 150, 60, 45)];
    //[test setTitleAndSubtitleWith:@"国学" And:@""];      //无副标题不会滚动
    [test setTitleAndSubtitleWith:@"国学" And:@"塔罗"];    //有副标题会滚动
    [self.view addSubview:test];

