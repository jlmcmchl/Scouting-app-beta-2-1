//
//  ViewController.m
//  Scouting app beta 2
//
//  Created by Team RUSH 1 on 1/21/14.
//  Copyright (c) 2014 Team RUSH 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

    
    

-(IBAction)Submit:(id)sender{

    NSLog(@"%g",Lowv);
    NSString *resultLine = [NSString stringWithFormat:@"%@,%@,%i,%i,%i,%i,%i,%i,%i,%i,%g,%g,%g,%g,%g,%g,%i,%i,%i,%i,%i\n",self->MatchNum.text,self->TeamNum.text,StartPos,GoalHAV,HAMV,HAHV,GoalLAV,LAMV,LAHV,MAV,value,Lowv,Trussv,Catchv,Shortv,Longv,BCV,SV,PDV,DRV,DSV];
    NSString *DocPath= [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask,YES)objectAtIndex:0];
    info.text=DocPath;
    NSString *surveys=[DocPath stringByAppendingPathComponent:@"results.csv"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:DocPath]){
        [[NSFileManager defaultManager]
         createFileAtPath:surveys contents:nil attributes:nil];
        
    }
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:surveys];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[resultLine dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
    NSLog(@"info saved");
    NSLog(@"%@,%@",DocPath,resultLine);
[LAM setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [LAM setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [HAM setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [LAH setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [S setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [BC setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [PD setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [DR setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [DS setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [MA setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [HAH setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [GoalHA setSelectedSegmentIndex:UISegmentedControlNoSegment];
       [GoalLA setSelectedSegmentIndex:UISegmentedControlNoSegment];
       [Start setSelectedSegmentIndex:UISegmentedControlNoSegment];
    Longv = 0;

    [Longl setText:[NSString stringWithFormat:@"%d",(int)Longv]];
    value = 0;
    [label setText:[NSString stringWithFormat:@"%d",(int)value]];
    Lowv = 0;
    [Lowl setText:[NSString stringWithFormat:@"%d",(int)Lowv]];
    Shortv =0;
    [Shortl setText:[NSString stringWithFormat:@"%d",(int)Shortv]];
    Trussv = 0;
    [Trussl setText:[NSString stringWithFormat:@"%d",(int)Trussv]];
    Catchv = 0;
    [Catchl setText:[NSString stringWithFormat:@"%d",(int)Catchv]];
  [DR setEnabled:NO];
  
   
}
-(IBAction)retractkeyboard:(id)sender{
    
    [self resignFirstResponder];
}
-(IBAction)valueChanged:(UIStepper *)sender{
   
 value = [sender value];
    [label setText:[NSString stringWithFormat:@"%d",(int)value]];
}
-(IBAction)Low:(UIStepper *)sender{
    
    Lowv = [sender value];
    [Lowl setText:[NSString stringWithFormat:@"%d",(int)Lowv]];
}
-(IBAction)Short:(UIStepper *)sender{
    
    Shortv = [sender value];
    [Shortl setText:[NSString stringWithFormat:@"%d",(int)Shortv]];
}
-(IBAction)Long:(UIStepper *)sender{
    
    Longv = [sender value];
    [Longl setText:[NSString stringWithFormat:@"%d",(int)Longv]];
}
-(IBAction)Truss:(UIStepper *)sender{
    
    Trussv = [sender value];
    [Trussl setText:[NSString stringWithFormat:@"%d",(int)Trussv]];
}
-(IBAction)Catch:(UIStepper *)sender{
    
    Catchv = [sender value];
    [Catchl setText:[NSString stringWithFormat:@"%d",(int)Catchv]];
}
-(IBAction)StartButton:(id)sender{
    StartPos=Start.selectedSegmentIndex;
    }
-(IBAction)GoalHAB:(id)sender{
    GoalHAV=GoalHA.selectedSegmentIndex;
    if(GoalHAV<HAHV){
        HAHV=GoalHAV;
        HAH.selectedSegmentIndex=GoalHAV;
    }
    if(GoalHAV<HAMV){
        HAMV=GoalHAV;
        HAM.selectedSegmentIndex=GoalHAV;
    }
}
-(IBAction)GoalLAB:(id)sender{
    GoalLAV=GoalLA.selectedSegmentIndex;
    if(GoalLAV<LAHV){
        LAHV=GoalLAV;
        LAH.selectedSegmentIndex=GoalLAV;
    }
    if(GoalLAV<LAMV){
        LAMV=GoalLAV;
        LAM.selectedSegmentIndex=GoalLAV;
    }
    }
-(IBAction)HAMB:(id)sender{
    HAMV=HAM.selectedSegmentIndex;
    if(GoalHAV<HAHV){
        HAHV=GoalHAV;
        HAH.selectedSegmentIndex=GoalHAV;
    }
    if(GoalHAV<HAMV){
        HAMV=GoalHAV;
        HAM.selectedSegmentIndex=GoalHAV;
    }
}
-(IBAction)HAHB:(id)sender{
    HAHV=HAH.selectedSegmentIndex;
    if(GoalHAV<HAHV){
        HAHV=GoalHAV;
        HAH.selectedSegmentIndex=GoalHAV;
    }
    if(GoalHAV<HAMV){
        HAMV=GoalHAV;
        HAM.selectedSegmentIndex=GoalHAV;
    }
}
-(IBAction)LAMB:(id)sender{
    LAMV=LAM.selectedSegmentIndex;
    if(GoalLAV<LAHV){
        LAHV=GoalLAV;
        LAH.selectedSegmentIndex=GoalLAV;
    }
    if(GoalLAV<LAMV){
        LAMV=GoalLAV;
        LAM.selectedSegmentIndex=GoalLAV;
    }
}
-(IBAction)LAHB:(id)sender{
    LAHV=LAH.selectedSegmentIndex;
    if(GoalLAV<LAHV){
        LAHV=GoalLAV;
        LAH.selectedSegmentIndex=GoalLAV;
    }
    if(GoalLAV<LAMV){
        LAMV=GoalLAV;
        LAM.selectedSegmentIndex=GoalLAV;
    }
}
-(IBAction)MAB:(id)sender{
    MAV=MA.selectedSegmentIndex;
}
-(IBAction)SB:(id)sender{
    SV=S.selectedSegmentIndex;
    
}
-(IBAction)BCB:(id)sender{
    BCV=BC.selectedSegmentIndex;
}
-(IBAction)PDB:(id)sender{
    PDV=PD.selectedSegmentIndex;
    if(PDV==1){
    [DR setEnabled:NO];
    }
    if(PDV==0){
        [DR setEnabled:YES];
    }
}
-(IBAction)DRB:(id)sender{
    DRV=DR.selectedSegmentIndex;
}
-(IBAction)DSB:(id)sender{
    DSV=DS.selectedSegmentIndex;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
