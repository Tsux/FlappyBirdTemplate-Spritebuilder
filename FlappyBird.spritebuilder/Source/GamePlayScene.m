#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*) [CCBReader load:@"character"];
    [physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
}

-(NSArray *) addThisToArray: (NSString*)fst andThisOne: (NSString*)sst andAlsoThis: (NSString*)tsd{
    return [NSArray arrayWithObjects: fst, sst, tsd, nil];
}

@end
