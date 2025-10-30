let numbers = readLine()!.split(separator: " ").map { Int($0)! }
let A = numbers[0]
let B = numbers[1]
let C = numbers[2]

print((A + B) % C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)