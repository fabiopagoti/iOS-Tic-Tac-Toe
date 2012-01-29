//
//  TTTViewController.m
//  iOS Tic-Tac-Toe
//
//  Created by Fábio Pagoti on 12-01-28.
//  Copyright (c) 2012 Inlingua Vancouver Granville. All rights reserved.
//

#import "TTTGameBoardController.h"
#import "TTTGame.h"

@interface TTTGameBoardController()
@property (strong) TTTGame *game;
@end


@implementation TTTGameBoardController

@synthesize game = _game;

-(void)setGame:(TTTGame *)game
{
    if (!_game) {
        _game = [TTTGame createNewGame];
    }else{
        _game = game;    
    }
}







- (IBAction)squarePressed:(UIButton)sender {
    
    UILabel *buttonTitleLabel = [sender titleLabel];
    
    if ([[buttonTitleLabel text] isEqualToString:@""]) {
        [buttonTitleLabel text] = [[_game board] nextPlayer];
    }

}






- (IBAction)newGame:(id)sender {
    _game = nil;
    
}




























- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
