//
//  ViewController.m
//  HBalgorithm
//
//  Created by xiangbiying on 17/8/13.
//  Copyright © 2017年 xiangby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//非递归方式
int binSearch(int key, int *a, int length){
    
    int low = 0;
    int high = length;
    
    while (low <= high) {
        int mid=low+((high-low)>>1);
        
        if(key == a[mid]){
            return mid;
        }else if(key <a[mid]){
            high=mid-1;
        }else{
            low=mid+1;
        }
    }
    return -1;
}

//递归方式
int binSearchRecursion(int *a, int low, int high, int key){
    while (low <= high) {
        int mid = low + (high - low)/2;
        if (key == a[mid]) {
            return mid;
        }else if (key < a[mid]){
            return binSearchRecursion(a,low,mid-1,key);
        }else{
            return binSearchRecursion(a,mid + 1,high,key);
        }
    }
    return -1;
}


@end
