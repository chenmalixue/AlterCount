//
//  ViewController.m
//  AlterCount
//
//  Created by 陈宣 on 15/7/11.
//  Copyright (c) 2015年 陈宣. All rights reserved.
//

#import "ViewController.h"
#define numbercheck @"0123456789."

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = CGSizeMake(320, 600);
    self.txtApc.delegate = self;
    
    
    
   //复选框实现
    
    UIButton *checkbox = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect checkboxRect = CGRectMake(330,472,20,20);
    [checkbox setFrame:checkboxRect];
    
    
    
    
    
    [checkbox setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [checkbox setImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateSelected];
    //[checkbox setTitle:@"点击" forState:UIControlStateNormal];
    //[checkbox setTitleColor:[UIColor defaultcolor ] forState:UIControlStateNormal];
    
    
    
    [checkbox addTarget:self action:@selector(checkboxClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkbox];
    
    
    
    
    
    
}



-(void)checkboxClick:(UIButton *)btn

{
    btn.selected = !btn.selected;
    if (btn.selected) {
        [btn setTitle:@"选中" forState:UIControlStateSelected];
    }else
    {
        [btn setTitle:@"没选" forState:UIControlStateNormal];
    
    }
    
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)backgroundTap:(id)sender {
    [_txtBTC resignFirstResponder];
    [_txtLTC resignFirstResponder];
    [_txtDoge resignFirstResponder];
    [_txtXrp resignFirstResponder];
    [_txtBts resignFirstResponder];
    [_txtStr resignFirstResponder];
    [_txtNxt resignFirstResponder];
    [_txtBlk resignFirstResponder];
    [_txtYbc resignFirstResponder];
    [_txtBils resignFirstResponder];
    [_txtBost resignFirstResponder];
    [_txtPpc resignFirstResponder];
    [_txtApc resignFirstResponder];
    [_txtZcc resignFirstResponder];
    [_txtXpm resignFirstResponder];
    [_txtDgc resignFirstResponder];
    [_txtMec resignFirstResponder];
    [_txtWdc resignFirstResponder];
    [_txtQrk resignFirstResponder];
    [_txtBec resignFirstResponder];
    [_txtAnc resignFirstResponder];
    [_txtUnc resignFirstResponder];
    [_txtRic resignFirstResponder];
    [_txtSrc resignFirstResponder];
    [_txtTag resignFirstResponder];
}
-(IBAction)textFiledReturnEditing:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)btnDraw:(id)sender {
}



- (IBAction)SaveCount:(id)sender {
   
    NSString *title=@"警告";
    NSString *message=@"输入不能为空，如果没有请输入零";
   if(_txtBTC.text.length==0&&_txtBTC.text.length==0&&_txtLTC.text.length==0&&_txtDoge.text.length==0&&_txtXrp.text.length==0&&_txtBts.text.length==0&&_txtStr.text.length==0&&_txtNxt.text.length==0&&_txtBlk.text.length==0&&_txtYbc.text.length==0&&_txtBils.text.length==0&&_txtBost.text.length==0&&_txtPpc.text.length==0&&_txtApc.text.length==0&&_txtZcc.text.length==0&&_txtXpm.text.length==0&&_txtDgc.text.length==0&&_txtMec.text.length==0&&_txtWdc.text.length==0&&_txtQrk.text.length==0&&_txtBec.text.length==0&&_txtAnc.text.length==0&&_txtUnc.text.length==0&&_txtRic.text.length==0&&_txtSrc.text.length==0&&_txtTag.text.length==0)
   {
        twoAlert(title, message,nil);
   }
    else
    {
        //获取文件路径
         NSArray *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *ourDocumentPath = [documentPath objectAtIndex:0];
        NSString *FileName = [ourDocumentPath stringByAppendingPathComponent:@"altercount.txt"];
       
        NSString *content =[NSString stringWithFormat:@"%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@",_txtBTC.text,_txtLTC.text,_txtDoge.text,_txtXrp.text,_txtBts.text,_txtStr.text,_txtNxt.text,_txtBlk.text ,_txtYbc.text,_txtBils.text,_txtBost.text,_txtPpc.text,_txtApc.text,_txtZcc.text,_txtXpm.text,_txtDgc.text,_txtMec.text,_txtWdc.text,_txtQrk.text,_txtBec.text,_txtAnc.text,_txtUnc.text,_txtRic.text,_txtSrc.text,_txtTag.text];
        NSData *contentdata = [content dataUsingEncoding:NSASCIIStringEncoding];
        //写入文件
        if([contentdata writeToFile:FileName  atomically:YES ])
        {
            _txtBTC.text=@"";
            _txtLTC.text=@"";
            _txtDoge.text=@"";
            _txtXrp.text=@"";
            _txtBts.text=@"";
            _txtStr.text=@"";
            _txtNxt.text=@"";
            _txtBlk.text=@"";
            _txtYbc.text=@"";
            _txtBils.text=@"";
            _txtBost.text=@"";
            _txtPpc.text=@"";
            _txtApc.text=@"";
            _txtZcc.text=@"";
            _txtXpm.text=@"";
            _txtDgc.text=@"";
            _txtMec.text=@"";
            _txtWdc.text=@"";
            _txtQrk.text=@"";
            _txtBec.text=@"";
            _txtAnc.text=@"";
            _txtUnc.text=@"";
            _txtRic.text=@"";
            _txtSrc.text=@"";
            _txtTag.text=@"";
        }
    }
}

- (IBAction)outPut:(UIButton *)sender {
    NSString *str=@"";
    NSArray *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *ourDocumentPath = [documentPath objectAtIndex:0];
    NSString *FileName = [ourDocumentPath stringByAppendingPathComponent:@"/altercount.txt"];
    
    NSData *txtBTCdata = [NSData dataWithContentsOfFile:FileName options:0 error:NULL];
    str=[[NSString alloc] initWithData: txtBTCdata encoding:NSUTF8StringEncoding ];
    if(!str)
        twoAlert(@"警告", @"存储数量的文件找不到",nil);
    else
    {
    NSArray *alterArray = [str  componentsSeparatedByString:@","];
    _txtBTC.text=[alterArray objectAtIndex:0];
    _txtLTC.text=[alterArray objectAtIndex:1];
    _txtDoge.text=[alterArray objectAtIndex:2];
    _txtXrp.text=[alterArray objectAtIndex:3];
    _txtBts.text=[alterArray objectAtIndex:4];
    _txtStr.text=[alterArray objectAtIndex:5];
    _txtNxt.text=[alterArray objectAtIndex:6];
    _txtBlk.text=[alterArray objectAtIndex:7];
    _txtYbc.text=[alterArray objectAtIndex:8];
    _txtBils.text=[alterArray objectAtIndex:9];
    _txtBost.text=[alterArray objectAtIndex:10];
    _txtPpc.text=[alterArray objectAtIndex:11];
    _txtApc.text=[alterArray objectAtIndex:12];
    _txtZcc.text=[alterArray objectAtIndex:13];
    _txtXpm.text=[alterArray objectAtIndex:14];
    _txtDgc.text=[alterArray objectAtIndex:15];
    _txtMec.text=[alterArray objectAtIndex:16];
    _txtWdc.text=[alterArray objectAtIndex:17];
    _txtQrk.text=[alterArray objectAtIndex:18];
    _txtBec.text=[alterArray objectAtIndex:19];
    _txtAnc.text=[alterArray objectAtIndex:20];
    _txtUnc.text=[alterArray objectAtIndex:21];
    _txtRic.text=[alterArray objectAtIndex:22];
    _txtSrc.text=[alterArray objectAtIndex:23];
    _txtTag.text=[alterArray objectAtIndex:24];
}
}

- (IBAction)count:(id)sender
{
  //  NSString *filepath=@"";
    NSArray *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *ourDocumentPath = [documentPath objectAtIndex:0];
    NSString *FileName = [ourDocumentPath stringByAppendingPathComponent:@"altercount.txt"];
    
    NSString *title=@"警告";
    NSString *message=@"输入不能为空，如果没有请输入零";
    if(_txtBTC.text.length==0&&_txtBTC.text.length==0&&_txtLTC.text.length==0&&_txtDoge.text.length==0&&_txtXrp.text.length==0&&_txtBts.text.length==0&&_txtStr.text.length==0&&_txtNxt.text.length==0&&_txtBlk.text.length==0&&_txtYbc.text.length==0&&_txtBils.text.length==0&&_txtBost.text.length==0&&_txtPpc.text.length==0&&_txtApc.text.length==0&&_txtZcc.text.length==0&&_txtXpm.text.length==0&&_txtDgc.text.length==0&&_txtMec.text.length==0&&_txtWdc.text.length==0&&_txtQrk.text.length==0&&_txtBec.text.length==0&&_txtAnc.text.length==0&&_txtUnc.text.length==0&&_txtRic.text.length==0&&_txtSrc.text.length==0&&_txtTag.text.length==0)
    
        twoAlert(title, message,nil);
        else
            
        {
            NSString *pathString=@"";
            NSData *txtBTCdata = [NSData dataWithContentsOfFile:FileName options:0 error:NULL];
            pathString=[[NSString alloc] initWithData: txtBTCdata encoding:NSUTF8StringEncoding ];
            NSArray *alterArray = [pathString  componentsSeparatedByString:@","];
            _txtBTC.text=[alterArray objectAtIndex:0];
            _txtLTC.text=[alterArray objectAtIndex:1];
            _txtDoge.text=[alterArray objectAtIndex:2];
            _txtXrp.text=[alterArray objectAtIndex:3];
            _txtBts.text=[alterArray objectAtIndex:4];
            _txtStr.text=[alterArray objectAtIndex:5];
            _txtNxt.text=[alterArray objectAtIndex:6];
            _txtBlk.text=[alterArray objectAtIndex:7];
            _txtYbc.text=[alterArray objectAtIndex:8];
            _txtBils.text=[alterArray objectAtIndex:9];
            _txtBost.text=[alterArray objectAtIndex:10];
            _txtPpc.text=[alterArray objectAtIndex:11];
            _txtApc.text=[alterArray objectAtIndex:12];
            _txtZcc.text=[alterArray objectAtIndex:13];
            _txtXpm.text=[alterArray objectAtIndex:14];
            _txtDgc.text=[alterArray objectAtIndex:15];
            _txtMec.text=[alterArray objectAtIndex:16];
            _txtWdc.text=[alterArray objectAtIndex:17];
            _txtQrk.text=[alterArray objectAtIndex:18];
            _txtBec.text=[alterArray objectAtIndex:19];
            _txtAnc.text=[alterArray objectAtIndex:20];
            _txtUnc.text=[alterArray objectAtIndex:21];
            _txtRic.text=[alterArray objectAtIndex:22];
            _txtSrc.text=[alterArray objectAtIndex:23];
            _txtTag.text=[alterArray objectAtIndex:24];
    
            NSString *coinName=@"btc";
            float price =coinJson(coinName);
            float count=[[alterArray objectAtIndex:0] floatValue];
            NSString *btc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBTC.text=btc;
    
            coinName=@"ltc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:1] floatValue];
            NSString *ltc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtLTC.text=ltc;
    
            coinName=@"dog";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:2] floatValue];
            NSString *dog=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtDoge.text=dog;

            coinName=@"Xrp";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:3] floatValue];
            NSString *xrp=[NSString stringWithFormat:@"%0.2f"   ,count*price];
            _txtXrp.text=xrp;
    
            coinName=@"Bts";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:4] floatValue];
            NSString *bts=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBts.text=bts;

            coinName=@"Str";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:5] floatValue];
            NSString *str=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtStr.text=str;

            coinName=@"Nxt";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:6] floatValue];
            NSString *nxt=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtNxt.text=nxt;

            coinName=@"Blk";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:7] floatValue];
            NSString *blk=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBlk.text=blk;

            coinName=@"Ybc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:8] floatValue];
            NSString *ybc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtYbc.text=ybc;

            coinName=@"Bils";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:9] floatValue];
            NSString *bils=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBils.text=bils;

            coinName=@"Bost";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:10] floatValue];
            NSString *bost=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBost.text=bost;

            coinName=@"Ppc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:11] floatValue];
            NSString *ppc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtPpc.text=ppc;

            coinName=@"Apc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:12] floatValue];
            NSString *apc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtApc.text=apc;
    
            coinName=@"Zcc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:13] floatValue];
            NSString *zcc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtZcc.text=zcc;

            coinName=@"Xpm";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:14] floatValue];
            NSString *xpm=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtXpm.text=xpm;

            coinName=@"Dgc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:15] floatValue];
            NSString *dgc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtDgc.text=dgc;

            coinName=@"Mec";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:16] floatValue];
            NSString *mec=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtMec.text=mec;

            coinName=@"Wdc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:17] floatValue];
            NSString *wdc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtWdc.text=wdc;

            coinName=@"Qrk";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:18] floatValue];
            NSString *qrk=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtQrk.text=qrk;
    
            coinName=@"Bec";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:19] floatValue];
            NSString *bec=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtBec.text=bec;
  
            coinName=@"Anc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:20] floatValue];
            NSString *anc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtAnc.text=anc;
    
            coinName=@"Unc";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:21] floatValue];
            NSString *unc=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtUnc.text=unc;
 
            coinName=@"Ric";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:22] floatValue];
            NSString *ric=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtRic.text=ric;

            coinName=@"Src";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:23] floatValue];
            NSString *src=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtSrc.text=src;

            coinName=@"Tag";
            price =coinJson(coinName);
            count=[[alterArray objectAtIndex:24] floatValue];
            NSString *tag=[NSString stringWithFormat:@"%0.2f",count*price];
            _txtTag.text=tag;
            
            float countcoin=[btc floatValue]+[ltc floatValue]+[dog floatValue]+[xrp floatValue]+[bts floatValue]+[str floatValue]+[nxt floatValue]+[blk floatValue]+[ybc floatValue]+[bils floatValue]+[bost floatValue]+[ppc floatValue]+[apc floatValue]+[zcc floatValue]+[xpm floatValue]+[dgc floatValue]+[mec floatValue]+[wdc floatValue]+[qrk floatValue]+[bec floatValue]+[anc floatValue]+[unc floatValue]+[ric floatValue]+[src floatValue]+[tag floatValue];
            _txtCount.text=[NSString stringWithFormat:@"%0.2f",countcoin];
            
    
        }
}

- (IBAction)btnClear:(id)sender {
    
    _txtBTC.text=@"";
    _txtLTC.text=@"";
    _txtDoge.text=@"";
    _txtXrp.text=@"";
    _txtBts.text=@"";
    _txtStr.text=@"";
    _txtNxt.text=@"";
    _txtBlk.text=@"";
    _txtYbc.text=@"";
    _txtBils.text=@"";
    _txtBost.text=@"";
    _txtPpc.text=@"";
    _txtApc.text=@"";
    _txtZcc.text=@"";
    _txtXpm.text=@"";
    _txtDgc.text=@"";
    _txtMec.text=@"";
    _txtWdc.text=@"";
    _txtQrk.text=@"";
    _txtBec.text=@"";
    _txtAnc.text=@"";
    _txtUnc.text=@"";
    _txtRic.text=@"";
    _txtSrc.text=@"";
    _txtTag.text=@"";

    _txtCount.text=@"";
    
    
}


//scrollview 方面处理


-(void) viewWillAppear:(BOOL)animated

{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
  
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    
    [super viewWillAppear:animated];
  
}

-(void) viewWillDisappear:(BOOL)animated

{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidHideNotification object:nil];
    
    [super viewWillDisappear:animated];
   
}

-(void) keyboardDidShow:(NSNotification *) notif

{
    if (keyboardVisible)
    {
        return;
    }

    NSDictionary* info =[notif userInfo];
    
    NSValue* aValue = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    
    CGSize keyboardsize = [aValue CGRectValue].size;
    CGRect viewFrame = self.scrollView.frame;
    viewFrame.size.height -= (keyboardsize.height);
    self.scrollView.frame = viewFrame;
 
    CGRect textFieldRect = [self.txtApc frame];
    
    [self.scrollView scrollRectToVisible:textFieldRect animated:YES];
    
    keyboardVisible = YES;
  
}

-(void) keyboardDidHide:(NSNotification *) notif

{
    NSDictionary * info =[notif userInfo];
    
    NSValue * aValue = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    
    CGSize keyboardsize = [aValue CGRectValue].size;
    CGRect viewFrame = self.scrollView.frame;
    
    viewFrame.size.height += keyboardsize.height;
    
    self.scrollView.frame = viewFrame;
    
    if(!keyboardVisible)
    {
        return;
    }
    keyboardVisible = NO;
}


@end










//解析btc38的webservice
float coinJson(NSString *coinName)
{
    float lastChange;
    NSError *error;
    //加载一个NSURL对象
    NSString *temp1=@"http://api.btc38.com/v1/ticker.php?c=";
    NSString *temp2=@"&mk_type=cny";
    NSString *btc38Url=[NSString stringWithFormat:@"%@%@%@",temp1,coinName,temp2];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:btc38Url]];
    //将请求的url数据放到NSData对象中
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //IOS5自带解析类NSJSONSerialization从response中解析出数据放到字典中
    NSDictionary *alterDic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
    NSDictionary *ticker = [alterDic objectForKey:@"ticker"];
    NSString *temp = [ticker objectForKey:@"last"];
    lastChange=[temp floatValue];
    return lastChange;
}



//提示框程序实现
void twoAlert(NSString *twotitle,NSString *twomessage,NSString *otherbtn)
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:twotitle message:twomessage delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    
}


