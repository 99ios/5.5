//
//  ViewController.m
//  5.5
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"
#import "MYLabel.h"
#import "Person.h"
@interface ViewController ()
@property (nonatomic, strong) Person *myPerson;
@property (nonatomic,strong) MYLabel *myLabel;
@end

@implementation ViewController

-(MYLabel *)myLabel{
    if (_myLabel == nil) {
        _myLabel = [[MYLabel alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
        _myLabel.backgroundColor = [UIColor redColor];
        _myLabel.textColor = [UIColor whiteColor];
    }
    return _myLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加myLabel
    [self.view addSubview:self.myLabel];
    //创建模型数据对象
    Person *person = [[Person alloc] init];
    self.myPerson = person;
    //添加观察者
    [person addObserver:self.myLabel forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.myPerson.name = [NSString stringWithFormat:@"%d",arc4random_uniform(1000000)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
