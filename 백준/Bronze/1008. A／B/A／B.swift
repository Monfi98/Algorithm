let numbers = readLine()!.split(separator: " ").map { Double($0)! }
print(numbers.first! / numbers.last!)