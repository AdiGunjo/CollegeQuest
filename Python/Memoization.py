import time
from functools import lru_cache
 
def fib_naive(n):
    if n <= 1:
        return n
    return fib_naive(n - 1) + fib_naive(n - 2)
 
 
@lru_cache(maxsize=None)
def fib_memo(n):
    if n <= 1:
        return n
    return fib_memo(n - 1) + fib_memo(n - 2)
 
 
n = 30
start = time.time()
print("Naive:", fib_naive(n), f"({time.time()-start:.4f}s)")
 
start = time.time()
print("Memoized:", fib_memo(n), f"({time.time()-start:.4f}s)")
