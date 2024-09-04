import time

sum = 0
start_time = time.time()

for i in range(1, 10000001):
    sum += i

end_time = time.time()

print(f"Sum: {sum}")
print(f"Time taken: {end_time - start_time} seconds")
