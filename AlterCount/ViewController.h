//
//  ViewController.h
//  AlterCount
//
//  Created by 陈宣 on 15/7/11.
//  Copyright (c) 2015年 陈宣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

{
    
    bool keyboardVisible;
    
}


@property (weak, nonatomic) IBOutlet UITextField *txtBTC;

@property (weak, nonatomic) IBOutlet UITextField *txtLTC;

@property (weak, nonatomic) IBOutlet UITextField *txtDoge;

@property (weak, nonatomic) IBOutlet UITextField *txtXrp;

@property (weak, nonatomic) IBOutlet UITextField *txtBts;

@property (weak, nonatomic) IBOutlet UITextField *txtStr;

@property (weak, nonatomic) IBOutlet UITextField *txtNxt;

@property (weak, nonatomic) IBOutlet UITextField *txtBlk;

@property (weak, nonatomic) IBOutlet UITextField *txtYbc;

@property (weak, nonatomic) IBOutlet UITextField *txtBils;

@property (weak, nonatomic) IBOutlet UITextField *txtBost;

@property (weak, nonatomic) IBOutlet UITextField *txtPpc;

@property (weak, nonatomic) IBOutlet UITextField *txtApc;

@property (weak, nonatomic) IBOutlet UITextField *txtZcc;

@property (weak, nonatomic) IBOutlet UITextField *txtXpm;

@property (weak, nonatomic) IBOutlet UITextField *txtDgc;

@property (weak, nonatomic) IBOutlet UITextField *txtMec;

@property (weak, nonatomic) IBOutlet UITextField *txtWdc;

@property (weak, nonatomic) IBOutlet UITextField *txtQrk;

@property (weak, nonatomic) IBOutlet UITextField *txtBec;

@property (weak, nonatomic) IBOutlet UITextField *txtAnc;

@property (weak, nonatomic) IBOutlet UITextField *txtUnc;

@property (weak, nonatomic) IBOutlet UITextField *txtRic;

@property (weak, nonatomic) IBOutlet UITextField *txtSrc;

@property (weak, nonatomic) IBOutlet UITextField *txtTag;


@property (weak, nonatomic) IBOutlet UILabel *txtCount;

@property (weak, nonatomic) IBOutlet UIScrollView *usvAlter;




- (IBAction)outPut:(UIButton *)sender;


- (IBAction)count:(id)sender;

- (IBAction)btnClear:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;



//BTC38 webservice 调用函数声明
float coinJson(NSString *coinName);


//双选择提示框声明
void twoAlert(NSString *twotitle,NSString *twomessage,NSString *otherbtn);

//键盘关闭程序
- (IBAction)backgroundTap:(id)sender;


- (IBAction)textFiledReturnEditing:(id)sender;



- (IBAction)btnDraw:(id)sender;



@end

