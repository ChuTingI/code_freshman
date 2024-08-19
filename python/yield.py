import sys
import random

def producer():
    while True:
        data = random.randint(0, 9)
        print("生產了：", data)
        yield data

def consumer():
    while True:
        data = yield
        print("消費了：", data)

def prog():
    num = int(sys.argv[1])
    print("開始執行", num, "次生產與消費。")
    p = producer()
    c = consumer()
    next(c)
    for i in range(num):
        data = next(p)
        c.send(data)

prog()