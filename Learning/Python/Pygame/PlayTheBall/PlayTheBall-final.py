#==========================================================================
import pygame
import sys
import math
import traceback
from pygame.locals import *
from random import *
#==========================================================================


#==========================================================================
#封装所需的类或方法
#==========================================================================
#继承自Sprite类
class Ball(pygame.sprite.Sprite):
    def __init__(self, blueball_image, pinkball_image, position, speed, bg_size, target):
        #初始化动画精灵
        pygame.sprite.Sprite.__init__(self)

        self.blueball_image = pygame.image.load(blueball_image).convert_alpha()
        self.pinkball_image = pygame.image.load(pinkball_image).convert_alpha()
        self.rect = self.blueball_image.get_rect()
        #将小球放在指定位置
        self.rect.left, self.rect.top = position

        #把方向和速度分开
        self.side = [choice([-1, 1]), choice([-1, 1])]#方向
        
        self.speed = speed #速率

        self.collide = False #用于指示是否发生了碰撞
        

        self.target = target #为每个小球设定一个不同的目标

        self.control = False #False #记录小球当前状态
        
        self.width, self.height = bg_size[0], bg_size[1]
        self.radius = self.rect.width / 2  #半径 for collide_circle

    def move(self):
        #把自由移动和控制移动分开
        if self.control:
            self.rect = self.rect.move(self.speed)
        else:
            self.rect = self.rect.move((self.side[0] * self.speed[0]),\
                                       (self.side[1] * self.speed[1]))
        
        #如果小球的右侧出了左边界，那么将小球左侧的位置改为右侧的边界
        #这样实现了从左边进入，右边出来的效果
        if self.rect.right <= 0:
            self.rect.left = self.width

        elif self.rect.left >= self.width:
            self.rect.right = 0

        elif self.rect.bottom <= 0:
            self.rect.top = self.height

        elif self.rect.top >= self.height:
            self.rect.bottom = 0
    
    #检查motion是否匹配小球的target
    def  check(self, motion):    
        if self.target < motion < self.target + 5: #范围决定难度
            return True
        else:
            return False
#==========================================================================

        
#==========================================================================    
class Glass(pygame.sprite.Sprite):
    def __init__(self, glass_image, mouse_image, bg_size):       
        pygame.sprite.Sprite.__init__(self)

        self.glass_image = pygame.image.load(glass_image).convert_alpha()
        self.glass_rect = self.glass_image.get_rect()
        self.glass_rect.left, self.glass_rect.top = \
                              (bg_size[0] - self.glass_rect.width) // 2, \
                              bg_size[1] - self.glass_rect.height

        self.mouse_image = pygame.image.load(mouse_image).convert_alpha()
        self.mouse_rect = self.mouse_image.get_rect()
        self.mouse_rect.left, self.mouse_rect.top = \
                              self.glass_rect.left, self.glass_rect.top
        pygame.mouse.set_visible(False)
#==========================================================================
    

#==========================================================================
#主函数
#==========================================================================
def main():
    pygame.init()  #初始化

    
    #==========================================================================
    #添加素材 设置游戏界面尺寸和标题
    #==========================================================================
    #添加图片
    blueball_image = 'image//blue_ball.png'
    pinkball_image = 'image//pink_ball.png'
    glass_image = 'image//glass.png'
    mouse_image = 'image//arrow.png'
    bg_image = 'image//background.png'
    win_image = 'image//win.png'
    lose_image = 'image//lose.png'    

    #添加背景音乐
    pygame.mixer.music.load('sound//bg_music.ogg')
    pygame.mixer.music.play()

    #添加音效
    loser_sound = pygame.mixer.Sound('sound//loser.wav')
    win_laugh_sound = pygame.mixer.Sound('sound//win_laugh.wav')
    lose_laugh_sound = pygame.mixer.Sound('sound//lose_laugh.wav')
    winner_sound = pygame.mixer.Sound('sound//winner.wav')
    hole_sound = pygame.mixer.Sound('sound//hole.wav')
    
    #根据背景图片指定游戏界面尺寸
    bg_size = width, height = 1024, 565
    screen = pygame.display.set_mode(bg_size)
    pygame.display.set_caption('Play The Ball')  #创建标题
    background = pygame.image.load(bg_image).convert_alpha()
    #==========================================================================

    
    #==========================================================================
    #添加所需变量 列表
    #==========================================================================
    running = True     #控制主循环是否进行
    motion = 0         #记录鼠标产生的事件数量

    msgs = []          #用来打印消息的列表
    balls = []         #用来存放小球     
    
    #黑洞的位置（一个范围） 左上角坐标
    hole = [(117, 119, 199, 201), (225, 227, 390, 392),\
            (503, 505, 320, 322), (698, 700, 192, 194),\
            (906, 908, 419, 421)] 
  
    
    group = pygame.sprite.Group()     #创建N个小球 位置随机 速度随机
    BALL_NUM = 5
    for i in range(BALL_NUM):
        position = randint(0, width-100), randint(0, height-100)
        speed = [randint(1, 10), randint(1, 10)]    #速度都取正数
        ball = Ball(blueball_image, pinkball_image, position, speed, bg_size, 5 * (i+1))  #传入target实参
        while pygame.sprite.spritecollide(ball, group, False, pygame.sprite.collide_circle):
            ball.rect.left, ball.rect.top = randint(0, width-100), randint(0, height-100)
        balls.append(ball)
        group.add(ball)

    
    #添加自定义事件：GAMEOVER
    GAMEOVER = USEREVENT  
    pygame.mixer.music.set_endevent(GAMEOVER)  #触背景音乐结束时触发

    #添加自定义事件：计时器 
    MYTIMER = USEREVENT + 1 
    pygame.time.set_timer(MYTIMER, 1000) #每1秒钟自动触发一次
    

    #设置按键重复响应
    pygame.key.set_repeat(100, 100)  #delay=100 interva1=00
    

    #实例化对象
    glass = Glass(glass_image, mouse_image, bg_size)
    
    clock = pygame.time.Clock()

    

    #==========================================================================
    #游戏主循环
    #==========================================================================
    while running:
        #==========================================================================
        #事件判断
        #==========================================================================
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()   #解决了IDLE不能点X退出的问题
                sys.exit()



            #==========================================================================
            #自定义事件：音乐播放结束 游戏失败
            #==========================================================================                
            elif event.type == GAMEOVER:  
                loser_sound.play()
                pygame.time.delay(4000)
                lose_laugh_sound.play()
                pygame.time.delay(5000)
                msg = pygame.image.load(lose_image).convert_alpha()
                msg_pos = (width - msg.get_width()) // 2,\
                          (height - msg.get_height()) // 2

                msgs.append((msg, msg_pos))
                
                running = False

            #==========================================================================
            #自定义事件：记录鼠标产生的事件数motion 如果匹配target 则小球状态设为control
            #==========================================================================
            elif event.type == MYTIMER:   
                if motion:
                    for each in group:
                        if each.check(motion):    
                            each.speed = [0, 0]
                            each.control = True  

                    motion = 0

            elif event.type == MOUSEMOTION:
                motion += 1


            #==========================================================================
            #KEY事件：通过键盘控制control状态的小球
            #==========================================================================
            elif event.type == KEYDOWN: 
                if event.key == K_w:
                    for each in group:
                        if each.control:
                            each.speed[1] -= 1  #加速度

                if event.key == K_s:
                    for each in group:
                        if each.control:
                            each.speed[1] += 1

                if event.key == K_a:
                    for each in group:
                        if each.control:
                            each.speed[0] -= 1

                if event.key == K_d:
                    for each in group:
                        if each.control:
                            each.speed[0] += 1

                if event.key == K_SPACE: #按下空格键 
                    for each in group:
                        if each.control:
                            for i in hole:
                                if i[0] <= each.rect.left <= i[1] and \
                                   i[2] <= each.rect.top <= i[3]:
                                    hole_sound.play()
                                    each.speed = [0, 0]
                                    group.remove(each)
                                    temp = balls.pop(balls.index(each)) 
                                    balls.insert(0, temp) #其他小球绘制在命中小球之后（显示在上层）
                                    hole.remove(i)

                            if not group: #游戏胜利
                                pygame.mixer.music.stop()
                                winner_sound.play()
                                pygame.time.delay(3000)
                                msg = pygame.image.load(win_image).convert_alpha()
                                msg_pos = (width - msg.get_width()) // 2,\
                                          (height - msg.get_height()) // 2

                                msgs.append((msg, msg_pos))
                                win_laugh_sound.play()
                                
                                    
                                
                                                
                
        #==========================================================================
        #创建玻璃面板，并限制鼠标图标移动范围在面板内
        #==========================================================================
        screen.blit(background, (0, 0))
        screen.blit(glass.glass_image, glass.glass_rect) #创建层次有讲究

        glass.mouse_rect.left, glass.mouse_rect.top = pygame.mouse.get_pos()
        if glass.mouse_rect.left < glass.glass_rect.left:
            glass.mouse_rect.left = glass.glass_rect.left
        if glass.mouse_rect.left > glass.glass_rect.right - glass.mouse_rect.width:
            glass.mouse_rect.left = glass.glass_rect.right - glass.mouse_rect.width
        if glass.mouse_rect.top < glass.glass_rect.top:
            glass.mouse_rect.top = glass.glass_rect.top
        if glass.mouse_rect.top > glass.glass_rect.bottom - glass.mouse_rect.height:
            glass.mouse_rect.top = glass.glass_rect.bottom - glass.mouse_rect.height

        screen.blit(glass.mouse_image, glass.mouse_rect)
            
        #==========================================================================
        #创建小球，并移动
        #==========================================================================
        for each in balls:
            each.move()   #先以相同的速度相离开
            if each.collide: #然后获得一个新的随机速度
                each.speed = [randint(1, 10), randint(1, 10)]
                each.collide = False
            
            if each.control:
                #画粉色小球
                screen.blit(each.pinkball_image, each.rect)                
            else:
                #画蓝色小球
                screen.blit(each.blueball_image, each.rect)

                              
        #==========================================================================
        #碰撞检测 更改小球状态：control collide
        #==========================================================================  
        for each in group:  
            group.remove(each)
            
            if pygame.sprite.spritecollide(each, group, False, pygame.sprite.collide_circle):

                #发生碰撞，小球获得一个新的随机速度，加大游戏难度
                each.side[0] = -each.side[0]
                each.side[1] = -each.side[1]

                each.collide = True  #标记为碰撞

                if each.control:     #对于受控小球
                    each.side[0] = -1
                    each.side[1] = -1
                    each.control = False   #标记为非碰撞             
                               
            group.add(each)
            

        #==========================================================================
        #创建消息
        #==========================================================================
        for msg in msgs:
            screen.blit(msg[0], msg[1])
            
        
                    

        #==========================================================================
        #刷新屏幕 设定帧率
        #==========================================================================
        pygame.display.flip()  #or .update()
        clock.tick(30)



#==========================================================================
#调用主函数 处理异常
#==========================================================================
if __name__ == "__main__":
    try:                #捕获异常
        main()
    except SystemExit:
        pass
    except:
        traceback.print_exc() #打印出错误的代码
        pygame.guit()
        input()
    
