@interface IGLikerConfig : NSObject
-(BOOL) hideLikeCount;
-(id) initWithHideLikeCount:(BOOL)arg1 hideViewCount:(BOOL)arg2 showLikeCountInLikersList:(BOOL)arg3 showViewCountInLikersList:(BOOL)arg4 showLearnMore:(BOOL)arg5;
@end

%hook IGLikerConfig
-(BOOL) hideLikeCount { return NO; }
-(id) initWithHideLikeCount:(BOOL)arg1 hideViewCount:(BOOL)arg2 showLikeCountInLikersList:(BOOL)arg3 showViewCountInLikersList:(BOOL)arg4 showLearnMore:(BOOL)arg5 { return %orig(NO, arg2, arg3, arg4, arg5); }
%end