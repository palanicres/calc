//
//  savViewController.m
//  calc
//
//  Created by BSA Univ19 on 04/01/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import "savViewController.h"

@interface savViewController ()

@end

@implementation savViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)butonclicked:(id)sender
{
    UIButton * tempbtn=(UIButton *)sender;
    int currentval=[tempbtn.titleLabel.text integerValue];
    Entervalue = Entervalue * 10+currentval;
     NSString * str=[NSString stringWithFormat:@"%i",Entervalue];
    
    [display setText:str];

}
- (IBAction) button1 {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction) button2 {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}
- (IBAction) button3 {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction) button4 {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction) button5 {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction) button6 {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction) button7 {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction) button8 {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction) button9 {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction) button0 {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction) ADD{
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) SUB{
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) MULT {
    operation = Multiply;
    storage = display.text;
    display.text=@"";
}

- (IBAction) DIV{
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction) equalbutton {
    NSString *val = display.text;
    switch(operation)
    {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
