//
//  savViewController.h
//  calc
//
//  Created by BSA Univ19 on 04/01/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;
@interface savViewController : UIViewController
{
    int Entervalue;
    IBOutlet UILabel *display;
    NSString *storage;
    CalcOperation operation;
  
}
-(IBAction)butonclicked:(id)sender;
-(IBAction)ADD;
-(IBAction)SUB;
-(IBAction)MULT;
-(IBAction)DIV;
- (IBAction) button1;
- (IBAction) button2;
- (IBAction) button3;
- (IBAction) button4;
- (IBAction) button5;
- (IBAction) button6;
- (IBAction) button7;
- (IBAction) button8;
- (IBAction) button9;
- (IBAction) button0;
- (IBAction) equalbutton;





@end
