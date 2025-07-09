func changeToMinute(_ time: String) -> Int {
  let minutes = Int(time.prefix(2))!
  let seconds = Int(time.suffix(2))!
  
  return minutes * 60 + seconds
}

func solution(
  _ video_len:String,
  _ pos:String,
  _ op_start:String,
  _ op_end:String,
  _ commands:[String]
) -> String {
  
  let videoLen = changeToMinute(video_len)
  var posLen = changeToMinute(pos)
  let opStart = changeToMinute(op_start)
  let opEnd = changeToMinute(op_end)
  
  if posLen >= opStart && posLen <= opEnd {
    posLen = opEnd
  }
  
  for command in commands {
    if command == "next" {
      posLen += 10
      if posLen > videoLen {
        posLen = videoLen
      }
    } else {
      posLen -= 10
      if posLen < 0 {
        posLen = 0
      }
    }
    if posLen >= opStart && posLen <= opEnd {
      posLen = opEnd
    }
  }
  
  var minutes = String(posLen / 60)
  if minutes.count == 1 { minutes = "0" + minutes }
  var seconds = String(posLen % 60)
  if seconds.count == 1 { seconds = "0" + seconds }
  
  return minutes + ":" + seconds
}