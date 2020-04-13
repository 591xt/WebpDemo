


#import "UIImage+YZWebp.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor=[UIColor whiteColor];
    UIImageView* webp=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    //后缀为小写的时候可以省略
    webp.image=[UIImage imageWithWebP:@"a"];
    webp.backgroundColor=[UIColor redColor];
    webp.center=CGPointMake(self.view.center.x, self.view.center.y*0.5);
    [self.view addSubview:webp];
    
    UIImageView* webp1=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    webp1.image=[UIImage imageWithWebP:@"a.webp"];
    webp1.backgroundColor=[UIColor greenColor];
    webp1.center=self.view.center;
    [self.view addSubview:webp1];
    
    //名字大小写不对识别不了
    UIImageView* webp2=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    webp2.image=[UIImage imageWithWebP:@"a.WEBP"];
    webp2.center=CGPointMake(self.view.center.x, self.view.center.y*1.5);
    webp2.backgroundColor=[UIColor blueColor];
    [self.view addSubview:webp2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
