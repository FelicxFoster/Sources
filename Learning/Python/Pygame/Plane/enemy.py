import pygame
from random import *

class SmallEnemy(pygame.sprite.Sprite):
    def __init__(self, bg_size):
        pygame.sprite.Sprite.__init__(self)

        self.image = pygame.image.load('images/enemy1.png').convert_alpha()
        self.destroy_images = []
        self.destroy_images.extend([\
            pygame.image.load('images/enemy1_destroy_1.png').convert_alpha(), \
            pygame.image.load('images/enemy1_destroy_2.png').convert_alpha(), \
            pygame.image.load('images/enemy1_destroy_3.png').convert_alpha(), \
            pygame.image.load('images/enemy1_destroy_4.png').convert_alpha() \
            ])
        self.rect = self.image.get_rect()
        self.width, self.height = bg_size
        self.speed = 2
        self.active = True
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-5 * self.height, 0)

        self.mask = pygame.mask.from_surface(self.image)

    def move(self):
        if self.rect.top < self.height:
            self.rect.top += self.speed
        else:
            self.reset()

    def reset(self):
        self.active = True
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-5 * self.height, 0)

            

class MidEnemy(pygame.sprite.Sprite):
    energy = 8  #血量  类的全局变量       
    
    def __init__(self, bg_size):
        pygame.sprite.Sprite.__init__(self)

        self.image = pygame.image.load('images/enemy2.png').convert_alpha()
        self.image_hit = pygame.image.load('images/enemy2_hit.png').convert_alpha()
        self.destroy_images = []
        self.destroy_images.extend([\
            pygame.image.load('images/enemy2_destroy_1.png').convert_alpha(), \
            pygame.image.load('images/enemy2_destroy_2.png').convert_alpha(), \
            pygame.image.load('images/enemy2_destroy_3.png').convert_alpha(), \
            pygame.image.load('images/enemy2_destroy_4.png').convert_alpha() \
            ])
        self.rect = self.image.get_rect()
        self.width, self.height = bg_size
        self.speed = 1
        self.active = True
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-10 * self.height, -self.height)

        self.mask = pygame.mask.from_surface(self.image)
        self.energy = MidEnemy.energy   #通过调用类的方法调用
        self.hit = False   #是否被击中

    def move(self):
        if self.rect.top < self.height:
            self.rect.top += self.speed
        else:
            self.reset()

    def reset(self):
        self.active = True
        self.energy = MidEnemy.energy   #通过调用类的方法调用
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-5 * self.height, -self.height)



class BigEnemy(pygame.sprite.Sprite):
    energy = 20

    def __init__(self, bg_size):
        pygame.sprite.Sprite.__init__(self)

        self.image1 = pygame.image.load('images/enemy3_n1.png').convert_alpha()
        self.image2 = pygame.image.load('images/enemy3_n2.png').convert_alpha()
        self.image_hit = pygame.image.load('images/enemy3_hit.png').convert_alpha()
        self.destroy_images = []
        self.destroy_images.extend([\
            pygame.image.load('images/enemy3_destroy_1.png').convert_alpha(), \
            pygame.image.load('images/enemy3_destroy_2.png').convert_alpha(), \
            pygame.image.load('images/enemy3_destroy_3.png').convert_alpha(), \
            pygame.image.load('images/enemy3_destroy_4.png').convert_alpha(), \
            pygame.image.load('images/enemy3_destroy_5.png').convert_alpha(), \
            pygame.image.load('images/enemy3_destroy_6.png').convert_alpha() \
            ])
        self.rect = self.image1.get_rect()
        self.width, self.height = bg_size
        self.speed = 1
        self.active = True
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-10 * self.height, -5 * self.height)

        self.mask = pygame.mask.from_surface(self.image1)
        self.energy = BigEnemy.energy
        self.hit = False


    def move(self):
        if self.rect.top < self.height:
            self.rect.top += self.speed
        else:
            self.reset()

    def reset(self):
        self.active = True
        self.energy = BigEnemy.energy
        self.rect.left = randint(0, self.width - self.rect.width)
        self.rect.top = randint(-15 * self.height, -5 * self.height)
