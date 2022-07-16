import UIKit

//매개변수가 없는 함수
func setNickname() -> Void {
    
    print("저는 스카일러입니다")
    
}

setNickname()

//매개변수가 있는 함수
func setNicknameParameter(nickname: String) -> String {
    
    print("저는 \(nickname)입니다") //개발자의 입장에서만 사용
    
    
    return "저는 \(nickname)입니다"
}

setNicknameParameter(nickname: "스카일러")



func getGameCharacter(name: String, age: Int) -> [String] {
    
    let character = ["도적", "도사", "주술사", "전사", "격투가"]
    let select = character.randomElement()!
    
    return [name, select]
    
}

var numberSet: Set = [2, 4, 6, 8, 10]
var numberSet2: Set = [1,2,3,4,5]

//numberSet.subtract(numberSet2) 원본건드림
//numberSet.subtracting(numberSet2) 원본안건드림

var numberArray = [1,2,3,4,5,6,7,8,9,10]

//반환값이 없음
//함수 실행만하고 끝
numberArray.shuffle()
//반환값이 있음
//함수 실행을 하고 새롭게 배열 하나를 만듦
numberArray.shuffled()

print(numberArray)


enum NewList: String{
    case 윰차 = "유모차의 준말"
    case 실매 = "실질적 매니저의 준말"
    case 만반잘부 = "만나서 반가워 잘부탁해"
    case 꾸안꾸 = "꾸민듯 안꾸민듯"
    case 삼귀자 = "사귀기 전 단계"
}





