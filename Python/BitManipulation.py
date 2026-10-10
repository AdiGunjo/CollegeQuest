def is_power_of_two(n):
    return n > 0 and (n & (n - 1)) == 0

def find_unique(nums):
    result = 0
    for n in nums:
        result ^= n          
    return result

def count_set_bits(n):
    count = 0
    while n:
        count += n & 1
        n >>= 1
    return count

print(is_power_of_two(16), is_power_of_two(18))
print(find_unique([4, 1, 2, 1, 2]))
print(count_set_bits(29))           