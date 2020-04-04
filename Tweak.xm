//>=A11
%hook CSProudLockViewController
- (void)viewDidLoad {
  return;
}
%end

//<A11
%hook SBStatusBarStateAggregator
- (void)_updateLockItem {
  return;
}
%end
