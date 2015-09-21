//
//  totalCalculate.m
//  AlterCount
//
//  Created by 陈宣 on 15/9/10.
//  Copyright (c) 2015年 陈宣. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "totalCalculate.h"
#import "localfileRead.h"

@implementation totalCalculate : NSObject 

float totalCalculatealterCoin(NSString *path)
{

    
    localfileRead *lfr=[[localfileRead alloc] init];
    [lfr.ReadCountFile()];
    
    
   // NSString *filename = [lfr ReadCountFile()];
    
    
    
    
    
    
    
    
    NSString *pathString=@"";
    NSData *txtBTCdata = [NSData dataWithContentsOfFile:FileName options:0 error:NULL];
    pathString=[[NSString alloc] initWithData: txtBTCdata encoding:NSUTF8StringEncoding ];
    NSArray *amountArray = [pathString  componentsSeparatedByString:@","];
    NSArray *priceArray
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







@end
