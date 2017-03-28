//
//  MYLabel.m
//  5.5
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "MYLabel.h"

@implementation MYLabel

-(void)setViewData:(Person *)viewData{
    _viewData = viewData;
    self.text = viewData.name;
}
//KVO:模型数据发生变化时调用
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSString *newText = change[@"new"];
    self.text = newText;
}

@end
