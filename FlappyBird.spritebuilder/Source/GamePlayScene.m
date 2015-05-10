#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*) [CCBReader load:@"character"];
    [physicsNode addChild:character];
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstable += delta;
    if(timeSinceObstable > 2.0f){
        [self addObstacle];
        timeSinceObstable = 0.0f;
    }
    log(delta);
    
}

// put new methods here

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
    timeSinceObstable = 0.0f;
}

-(NSArray *) addThisToArray: (NSString*)fst andThisOne: (NSString*)sst andAlsoThis: (NSString*)tsd{
    return [NSArray arrayWithObjects: fst, sst, tsd, nil];
}

@end
