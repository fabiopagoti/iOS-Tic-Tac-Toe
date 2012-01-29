//
//  TTTGame.h
//  iOS Tic-Tac-Toe
//
//  Created by Fábio Pagoti on 12-01-28.
//  Copyright (c) 2012 Inlingua Vancouver Granville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTTPlayer.h"
#import "TTTBoard.h"

@interface TTTGame : NSObject

@property (nonatomic, strong) TTTPlayer *player1;
@property (nonatomic, strong) TTTPlayer *player2;
@property (nonatomic, strong) TTTBoard *board;

@end
