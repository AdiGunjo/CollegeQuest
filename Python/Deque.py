from collections import deque
 
class TaskQueue:
    def __init__(self):
        self.queue = deque()
 
    def enqueue(self, task):
        self.queue.append(task)
 
    def dequeue(self):
        if not self.queue:
            return None
        return self.queue.popleft()
 
    def peek(self):
        return self.queue[0] if self.queue else None
 
 
tq = TaskQueue()
for t in ["print job A", "print job B", "print job C"]:
    tq.enqueue(t)
 
print("Next up:", tq.peek())
while (job := tq.dequeue()):
    print("Processing:", job)
