let n = Int(readLine()!)!

var arr = [0, 1]

for i in 0..<n-1 {
  let result = arr[i] + arr[i + 1]
  arr.append(result)
}

print(arr.last!)