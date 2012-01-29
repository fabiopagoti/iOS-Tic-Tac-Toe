//
//  TTTBoard.m
//  iOS Tic-Tac-Toe
//
//  Created by Fábio Pagoti on 12-01-28.
//  Copyright (c) 2012 Inlingua Vancouver Granville. All rights reserved.
//

#import "TTTBoard.h"

@interface TTTBoard()
@property (nonatomic, strong) NSArray *squares;
@end

@implementation TTTBoard
@synthesize squares = _squares;

-(void)setSquares:(NSArray *)squares
{
    if (!squares) {
        _squares = [[NSArray alloc] initWithObjects:@"",@"",@"",@"",@"",@"",@"",@"",@"", nil ];
    } else {
        _squares = squares;
    }
}

@end
