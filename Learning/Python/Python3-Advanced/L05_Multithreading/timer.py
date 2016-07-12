from threading import Thread
import time 

def timer(name, delay, repeat):
    print("Timer: %s Started." % name)
    while repeat > 0:
        time.sleep(delay)
        print("%s: %s" % (name, time.ctime(time.time())))
        repeat -= 1
    print("Timer: %s Completed." % name)

def Main():
    t1 = Thread(target=timer, args=("Timer1", 1, 5))
    t2 = Thread(target=timer, args=("Timer2", 2, 5))
    t1.start()
    t2.start()

    print("Main Completed.")



if __name__ == "__main__":
    Main()
