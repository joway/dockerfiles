import os
from datetime import datetime

TASK_NUM = int(os.environ.get('TASK_NUM', 4))


def log(msg):
    print("[%s] proc-%s" % (datetime.now(), msg))


def run():
    proc = os.getpid()
    while True:
        v = 10 ** 10000000
        log('%s ' % (proc,))


if __name__ == '__main__':
    # p = Pool()
    # for i in range(TASK_NUM):
    #     p.apply_async(run)
    # p.close()
    # p.join()

    run()
