//
//  ViewController.h
//  Scouting app beta 2
//
//  Created by Team RUSH 1 on 1/21/14.
//  Copyright (c) 2014 Team RUSH 1. All rights reserved.
//

#import <UIKit/UIKit.h>
int StartPos;
int GoalHAV;
int GoalLAV;
int HAMV;
int HAHV;
int LAMV;
int LAHV;
int MAV;
int SV;
int BCV;
int PDV;
int DRV;
int DSV;
double Lowv;
double Shortv;
double value;
double Longv;
double Trussv;
double Catchv;
@interface ViewController : UIViewController{
    IBOutlet UILabel *label;
      IBOutlet UILabel *Lowl;
      IBOutlet UILabel *Shortl;
      IBOutlet UILabel *Trussl;
      IBOutlet UILabel *Catchl;
      IBOutlet UILabel *Longl;
  
    
    IBOutlet UITextField *info;
    IBOutlet UITextField *MatchNum;
    IBOutlet UITextField *TeamNum;
    IBOutlet UITextField *StudentNum;
 
 IBOutlet UISegmentedControl *Start;
     IBOutlet UISegmentedControl *GoalHA;
     IBOutlet UISegmentedControl *GoalLA;
    IBOutlet UISegmentedControl *HAM;
    IBOutlet UISegmentedControl *HAH;
    IBOutlet UISegmentedControl *LAM;
    IBOutlet UISegmentedControl *LAH;
    IBOutlet UISegmentedControl *MA;
    IBOutlet UISegmentedControl *S;
    IBOutlet UISegmentedControl *BC;
    IBOutlet UISegmentedControl *PD;
    IBOutlet UISegmentedControl *DR;
    IBOutlet UISegmentedControl *DS;

    
}
-(IBAction)StartButton:(id)sender;
-(IBAction)retractkeyboard:(id)sender;
-(IBAction)GoalHAB:(id)sender;
-(IBAction)GoalLAB:(id)sender;
-(IBAction)HAMB:(id)sender;
-(IBAction)HAHB:(id)sender;
-(IBAction)LAMB:(id)sender;
-(IBAction)LAHB:(id)sender;
-(IBAction)MAB:(id)sender;
-(IBAction)SB:(id)sender;
-(IBAction)BCB:(id)sender;
-(IBAction)PDB:(id)sender;
-(IBAction)DRB:(id)sender;
-(IBAction)DSB:(id)sender;
- (IBAction)Submit:(id)sender;
-(IBAction)valueChanged:(UIStepper *)sender;
-(IBAction)Low:(UIStepper *)sender;
-(IBAction)Short:(UIStepper *)sender;
-(IBAction)Long:(UIStepper *)sender;
-(IBAction)Truss:(UIStepper *)sender;
-(IBAction)Catch:(UIStepper *)sender;


@end
