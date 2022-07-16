//: [Previous](@previous)

import Foundation

var email1: String = "jack@jack.com" //선언과 초기화

var email2: String?
email2 = "jack@jack.com" //선언만 하고 나중에 초기화

//각각 변수에 대한 타입을 알려줌
type(of: email1)
type(of: email2)

//같은 요소를 몇개나 넣어줄것인가
var array = Array(repeating: 0, count: 100)
print(array)

//?...! ?부터 !까지 순서대로 배열을 만들어줌
var array2: [Int]? = [Int](1...100)
type(of: array2)

array2 = nil

if array2 == nil {
    print("값이 없습니다")
} else {
    print("값이 있습니다")
}

//삼항연산자: 조건 ? O : X
var result = ""
result = array2 == nil ? "값이 없습니다" : "값이 있습니다"

//반환값: 100% 상황에 대한 대응이 가능해야 합니다
func example() -> String {
    
    let result = Int.random(in: 1...100)
    
    //문법 생각할때 완전 기초부터 올라오면서 생각해보면 어떤 문제든 해결 가능함!
    
    if result > 50 { //bool 값으로 판단이 가능한 요소, 반환값이 Bool 타입인 함수는 가능!
        return "UP"
    } else {
        return "DOWN"
    }
    
    //if문에서 else로 모든 상황에 대한 대응을 100% 하지 않았다면 아래와 같이 따로 return을 잡아줘야함
    //return "DOWN"
    
    //return result > 50 ? "UP" : "DOWN" 위에 if 조건문을 한줄로 씀
}

example()

//화면에서 당신의 bmi지수는 얼마다 라고 말해주고 싶으면 반환 타입을 설정해줘야함
func bmiResult() -> (String, Double) {
    let result = Double.random(in: 1...30)
    
    if result < 18.5 {
        return ("아령하세요", 1.0)
    } else if result >= 18.5 && result < 23 {
        return ("니노나", 2.0)
    } else {
        return ("두통", 4.0)
    }
    // will never be excuted는 전혀 사용할 코드가 없는 친구에게 뜸
    // return 3.0
}

let userBMI = bmiResult()
type(of: userBMI)

//문자열 보간법: String interpolation (feat. RawString - swift5) 한번 사용해보고 인지정도만 해보자
//.0 .1은 튜플 값을 인덱스로 가져온 것
print("\(userBMI.0)님의 BMI 등급은 \(userBMI.1)입니다")
print(userBMI.0 + "님의 BMI 등급은" + "\(userBMI.1)" + "입니다")

//swift 5.1 return 생략
//잘 사용하지 않음
@discardableResult //사용하지 않는 결과라는 어노테이션으로 노란색 경고 없애기 가능
func randomNumber() -> Int {
    //함수안에 코드가 한줄만 있고 리턴 타입이 정해져있다면 return을 사용 가능함
    Int.random(in: 1...100)
}

randomNumber()

let plusNumber = randomNumber() + 10
print(plusNumber)

//매개변수의 기본값을 사용함
//그냥 비워두는 것은 nickname의 옵셔널을 벗길 수 없어서 뒤에 스트링과 결합이 되지 않기 때문에 사용 불가함
//함수 이름이 같은 함수 > 오버로딩(같은 이름에 다른 기능)
func sayHello(nickname: String? = "손", gender: Int? = 2) -> String {
    return nickname! + "님, 반갑습니다!"
}

//
let user = array2 == nil ? "손님" : "고래밥"
sayHello(nickname: user)

sayHello(nickname: "테스트")

sayHello()

print("안녕하세요", separator: "123", terminator: "456")


//열거형(ex. 남/여/안함 -> 블랙/블루/화이트)
enum Gender: String {
    case man
    case woman
    case nothing
}

var gender: Gender = .man // "남자" "여자" "선택안함" // 0 1 2

//if gender == 0 {
//    print("남성입니다")
//} else if gender == 1 {
//    print("여성입니다")
//} else if gender == 2 {
//    print("아직 선택하지 않았습니다")
//}

switch gender {
case .man: print("남성입니다")
case .woman: print("여성입니다")
case .nothing: print("아직 선택하지 않았습니다")
}

gender.rawValue
type(of: gender.rawValue)



enum HTTPCode: Int {
    case OK //0
    case NO_PAGE //1
    case NOT_FOUND = 404
    case SERVER_ERROR //405
    
    func showStatus() -> String {
        //여기서의 self는 각각의 case
        switch self {
        case .OK: return "정상입니다"
        case .NO_PAGE: return "긴급점검"
        case .NOT_FOUND: return "잘못된 문제"
        case . SERVER_ERROR: return "페이지를 찾을 수 없음"
        }
    }
}

var networkStatus: HTTPCode = .NO_PAGE

//switch networkStatus {
//case .OK: print("정상", networkStatus.rawValue)
//case .NO_PAGE: print("잘못된 URL 주소", networkStatus.rawValue)
//default: print("기타", networkStatus.rawValue)
//}

let resultStatus = networkStatus.showStatus()
print(resultStatus)
