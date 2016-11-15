# ZYSliderMeunController
![img](https://github.com/Karthus1110/ZYSliderMeunController/blob/master/%E5%B7%A6%E4%BE%A7%E6%8B%96%E5%8A%A8.gif)
![img](https://github.com/Karthus1110/ZYSliderMeunController/blob/master/%E5%B7%A6%E4%BE%A7%E7%82%B9%E9%80%89.gif)
![img](https://github.com/Karthus1110/ZYSliderMeunController/blob/master/%E5%8F%B3%E4%BE%A7%E7%82%B9%E5%87%BB.gif)

[中文介绍](http://www.jianshu.com/p/4e294252e3c7)

Usage:
1.init method:
  mainVC cannot be nil 
  
    - (instancetype)initWithMainViewController:(UIViewController *)mainVC
                            leftViewController:(UIViewController *)leftVC
                           rightViewController:(UIViewController *)rightVC;
                           
2.modify the configuration.For example,picture 3 is the rightScale = 1.f

    #pragma mark ---------- left config -----------
    static CGFloat const leftShowWidth = 240.f;
    static CGFloat const leftScale = 0.8f;
    static CGFloat const leftDragbleWidth = 80.f;
    static CGFloat const leftMinDragLength = 100.f;

3.use the property provided to push:

    @property (nonatomic, strong, readonly) UINavigationController *sliderNavigationController; 
This navigationController is provided by mainViewController.If you don't like so, you need to rewrite the getter of this property.
