//
//  ViewController.m
//  ZMXObject
//
//  Created by zmx on 16/1/24.
//  Copyright © 2016年 zmx. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *person = [[Person alloc] init];
    
    //获取person对象的所有属性
    NSArray *properties = [person getProperties];
    for (int i = 0; i < properties.count; i++) {
        NSLog(@"%@", properties[i]);
    }
    
    person.name = @"zmx";
    person.age = [NSNumber numberWithInt:30];
    person.sex = @"m";
    
    //将person对象转换成NSData
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:person];
    //将NSData转换成person对象
    Person *person2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    NSLog(@"name=%@  age=%d  sex=%@", person2.name, person2.age.intValue, person2.sex);
}

@end
