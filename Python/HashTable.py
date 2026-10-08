class HashMap:
    def __init__(self, size=8):
        self.size = size
        self.buckets = [[] for _ in range(size)]

    def _index(self, key):
        return hash(key) % self.size

    def put(self, key, value):
        bucket = self.buckets[self._index(key)]
        for i, (k, v) in enumerate(bucket):
            if k == key:
                bucket[i] = (key, value)
                return
        bucket.append((key, value))

    def get(self, key):
        for k, v in self.buckets[self._index(key)]:
            if k == key:
                return v
        raise KeyError(key)

hm = HashMap()
hm.put("name", "Aditya")
hm.put("year", 2)
print(hm.get("name"), hm.get("year"))