//
//  JHSLVCollectionView.m
//  LVSDK
//
//  Created by dongxicheng on 9/2/15.
//  Copyright (c) 2015 dongxicheng. All rights reserved.
//
#import "JHSLVCollectionView.h"


@implementation JHSLVCollectionView
// 下拉刷新
-(void) lv_initRefreshHeader{// 初始化下拉刷新功能
    MJRefreshNormalHeader* refreshHeader = [[MJRefreshNormalHeader alloc] init];
    self.mj_header = refreshHeader;
    
    __weak typeof(self) weakSelf = self;
    refreshHeader.refreshingBlock = ^(){
        [weakSelf lv_refreshHeaderToRefresh];
    };
}

- (void) lv_hiddenRefreshHeader:(BOOL) hidden{
    self.mj_header.hidden = hidden;
}

- (void) lv_beginRefreshing{// 进入刷新状态
    [self.mj_header beginRefreshing];
}

- (void) lv_endRefreshing{// 结束刷新状态
    [self.mj_header endRefreshing];
}

- (BOOL) lv_isRefreshing{// 是否正在刷新
    return self.mj_header.isRefreshing;
}

-(void) dealloc{
}

@end
