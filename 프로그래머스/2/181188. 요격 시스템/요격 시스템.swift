func solution(_ targets:[[Int]]) -> Int {

    // 정렬: 끝점을 기준으로 내림차순, (같으면 시작점)
    let targets = targets.sorted { t1, t2 in
        if t1[1] == t2[1] {
            return t1[0] < t2[0]
        } else {
            return t1[1] < t2[1]
        }
    }

    // 현재 요격 미사일 갯수
    var ans = 0
    // 현재 요격 미사일을 쏘는 위치
    var nowEnd = 0
    
    // 폭격 미사일이 겹치는 조건: 시작점 < 끝점
    for target in targets {
        if target[0] >= nowEnd {
            ans += 1
            nowEnd = target[1]
        }
    }

    return ans
}