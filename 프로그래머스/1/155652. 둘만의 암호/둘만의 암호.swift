import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let skipSet = Set(skip)
    var result = ""

    for letter in s {
        var ch = letter
        var cnt = 0
        while cnt < index {
            // 다음 알파벳으로 이동 (z->a)
            var next = Int(ch.asciiValue!) + 1
            if next > 122 { // 122 == "z"
                next = 97   // 97 == "a"
            }
            let nextChar = Character(UnicodeScalar(next)!)
            if !skipSet.contains(nextChar) {
                cnt += 1
            }
            ch = nextChar
        }
        result.append(ch)
    }

    return result
}