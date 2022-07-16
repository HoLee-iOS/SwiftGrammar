//: [Previous](@previous)

import Foundation
//SuperClass, SubClass, BaseClass
class Monster {
    var clothes = "Orange + Christmas"
    var speed = 5
    var power = 20
    var expoint = 500.0
    
    func attack() {
        print("공격!!!")
    }
}

var easyMonster = Monster() //초기화(인스턴스)
easyMonster.clothes
easyMonster.power

easyMonster.attack()
easyMonster.attack()

class BossMonster: Monster {
    
    var levelLimit = 500
    
    func bossAtack() {
        print("스페셜 공격")
    }
    
    //override는 재정의
    override func attack() {
        super.attack() //부모 클래스에 있는 attack 호출
        print("오버라이드 공격!")
    }
}

var finalBoss = BossMonster()
finalBoss.bossAtack()
finalBoss.levelLimit
finalBoss.speed
finalBoss.clothes
finalBoss.attack()

//구조체는 값 타입, 클래스는 참조 타입
//구조체는 스택에 저장됨
//클래스는 힙에 저장됨

var nickname = "사또밥"

var subNickname = nickname

subNickname = "인디언밥"

print(nickname) //사또밥
print(subNickname) //인디언밥

var miniMonster = Monster()

var bossMonster = miniMonster

bossMonster.power = 5000

print(miniMonster.power) //5000
print(bossMonster.power) //5000
