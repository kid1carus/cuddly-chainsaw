@interface IGLikerConfig : NSObject
-(BOOL) hideLikeCount;
-(id) initWithHideLikeCount:(BOOL)arg1 hideViewCount:(BOOL)arg2 showLikeCountInLikersList:(BOOL)arg3 showViewCountInLikersList:(BOOL)arg4 showLearnMore:(BOOL)arg5;


-(BOOL) showLikeCountInLikersList;
-(BOOL) showViewCountInLikersList;
-(id) initWithIsInDaisy:(BOOL)arg1 showLikeCountInLikersList:(BOOL)arg2 showViewCountInLikersList:(BOOL)arg3 displayMode:(NSUInteger)arg4 adsDisplayMode:(NSUInteger)arg5;
@end

%hook IGLikerConfig
// Used in an older version of Instagram
-(BOOL) hideLikeCount { return NO; }
-(id) initWithHideLikeCount:(BOOL)arg1 hideViewCount:(BOOL)arg2 showLikeCountInLikersList:(BOOL)arg3 showViewCountInLikersList:(BOOL)arg4 showLearnMore:(BOOL)arg5 { return %orig(NO, arg2, arg3, arg4, arg5); }


// Used in the current version of Instagram
-(BOOL) showLikeCountInLikersList { return YES; }
-(BOOL) showViewCountInLikersList { return YES; }
-(id) initWithIsInDaisy:(BOOL)arg1 showLikeCountInLikersList:(BOOL)arg2 showViewCountInLikersList:(BOOL)arg3 displayMode:(NSUInteger)arg4 adsDisplayMode:(NSUInteger)arg5 { return %orig(arg1, YES, YES, arg4, arg5); }
%end