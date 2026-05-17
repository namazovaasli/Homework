import Foundation

//Homework Lesson 2

//Sual 1

//var cem=0
//for i in 1...50{
//    if i%2 == 0{
//        cem+=i
//    }
//}
//print(cem)


//Sual 2

//for i in 1...30{
//    if i%3==0 && i%5==0{
//        print("FizzBuzz")
//    }
//    else if i%3==0{
//        print("Fizz")
//    }
//    else if i%5==0{
//        print("Buzz")
//    }
//    else{
//        print(i)
//    }
//}

//Sual 3

//let cities=["Bakı","Gəncə","Sumqayıt","Lənkəran"]
//let say = cities.count
//
//for i in 0..<say{
//    print(cities[say-1-i])
//}

//Sual 4

//let eded = 28
//var min = 1
//var max = 100
//var addım = 0
//var orta = (min + max) / 2
//
//while orta != eded {
//    addım += 1
//    if eded > orta {
//        min = orta + 1
//    } else {
//        max = orta - 1
//    }
//    orta = (min + max) / 2
//}
//print("Ədəd: \(orta)")
//print("Addım sayı: \(addım)")


//Sual 5

//var isim: String? = nil
//let İsim = isim ?? "Tapılmayan istifadəçi"
//print(İsim)
// isim əgər nil gələrsə o zaman Tapılmayan istifadəçi olaraq print olunacaq
//
//var yas: Int? = 25
//let Yas = yas ?? 0
//print(Yas)
// Yaş əgər nil gələrsə o zaman o olaraq print olunacaq
//
//var skor: Double? = nil
//let Skor = skor ?? 0.0
//print(Skor)
// Skor əgər nil gələrsə o zaman 0.0 olaraq print olunacaq

//Sual 6

//func checkLogin(username: String?, password: String?) {
//    if let username,let password {
//        print("Giriş uğurludur")
//    } else {
//        print("Məlumat natamamdır")
//    }
//}

// Buradakı vergüller ile kod tekrarının qarşısını alıb if let-i iki defe yox bir defe istifadə etdik. Vergül ilə AND operatorunu əvəz edib hər iki şərti yoxladıq, && bu işarəni əvəz etdik.

//func checkLogin(username: String?, password: String?) {
//    if username != nil && password != nil {
//        print("Giriş uğurludur")
//    } else {
//        print("Məlumatlar natamamdır")
//    }
//}

//func login(username: String?, password: String?) {
//    guard let username, let password else {
//        print("Məlumatlar natamamdır") ; return
//    }
//    print("Giriş uğurludur")
//}


//Sual 7

//checkAge(yas: 22)
//func checkAge(yas: Int?) {
//    guard let yas, yas >= 18 else {
//        print("Giriş qadağandır") ; return
//    }
//    print("Xoş gəldiniz")
//}

// if let ile yoxlasaq
//func checkAge(yas: Int?){
//    if let yas, yas >= 18 {
//        print("Xoş gəldiniz")
//    }
//    else{
//        print("Giriş qadağandır")
//    }
//}

// Sual 8
//
//var ad: String? = "Nərmin"
//var soyad: String? = nil
//var telefon: String? = "055-555-55-55"
//
//if let ad, let soyad, let telefon {
//    print("Ad: \(ad) Soyad: \(soyad) Telefon: \(telefon)")
//}
//else {
//    print("Natamam məlumat")
//}


//Sual 9

//let PIN = "1234"
//var cehd = 1
//repeat {
//    var daxiledilenPIN = "9999"
//    if daxiledilenPIN == PIN {
//        print("Giriş uğurludur")
//        break
//    } else {
//        let qalancehd = 3 - cehd
//        print("PİN yanlışdır.Qalan cəhd hüququnuz: \(qalancehd)")
//    }
//    cehd += 1
//} while cehd <= 3


//Sual 10

//if let ile etsək
//func convertAndDouble(metn: String?) {
//    if let daxiledilen = metn, let reqem = Int(daxiledilen){
//        print(reqem * 2 )
//    } else {
//        print("Rəqəm deyil")
//    }
//}
//
// guard let ile etsək
//convertAndDouble(metn: "8")
//func convertAndDouble(metn: String?){
//    guard let daxiledilen=metn, let reqem=Int (daxiledilen) else
//    {
//        print("Rəqəm deyil")
//        return  }
//
//    print(reqem * 2)
//
//}

//Sual 11
//var birincieded = 0
//var ikincieded = 1
//while birincieded < 100 {
//    print(birincieded)
//    let sonraki = birincieded+ikincieded
//    birincieded = ikincieded
//    ikincieded = sonraki
//    }

//Sual 12
//func isPrime(sayi: Int) -> Bool? {
//    if sayi < 0 {
//        return nil
//    }
//    // 0 ve ya 1 olarsa, iki sertden biri dogru olarsa false olacaq
//    // || ve ya demekdir
//    if sayi==0 || sayi==1 {
//        return false
//    }
//    for i in 2..<sayi {
//            if sayi % i == 0 {
//                return false
//            }
//        }
//        return true
//}
//let yoxlanacaqSayi = 5
//
//// if let
//if let netice = isPrime(sayi: yoxlanacaqSayi) {
//   if netice {
//        print("\(yoxlanacaqSayi) sadə ədəddir")
//    } else {
//        print("\(yoxlanacaqSayi) sadə ədəd deyil")
//    }
//} else {
//    print("Mənfi ədəd daxil edilib")
//}


//Sual 13
//func isPalindrome(söz: String?) -> Bool {
//    guard let orijinalSöz = söz else {
//        return false
//    }
//    var tərsSöz = ""
//    for hərf in orijinalSöz {
//        tərsSöz = String(hərf) + tərsSöz
//    }
//    return orijinalSöz == tərsSöz
//}
//print(isPalindrome(söz: "kitab"))

//Sual 14
//func digitSum(ədəd: Int?) -> Int? {
//    guard var muveqqetiEded = ədəd else {
//        return nil
//    }
//    if muveqqetiEded < 0 {
//        return nil
//    }
//    var cem = 0
//
//    while muveqqetiEded > 0 {
//        let qaliq = muveqqetiEded % 10
//        cem += qaliq
//        muveqqetiEded = muveqqetiEded / 10
//    }
//
//    return cem
//}
//
//if let netice = digitSum(ədəd: 100) {
//    print("Rəqəmlərin cəmi: \(netice)")
//}

//Sual 15
//func printPyramid(hündürlük: Int?) {
//    guard let h = hündürlük, h > 0 else {
//        return
//    }
//    for i in 0..<h {
//        let bosluqSayi = i
//        let ulduzSayi = h - i
//        
//        let bosluqlar = String(repeating: " ", count: bosluqSayi)
//        let ulduzlar = String(repeating: "*", count: ulduzSayi)
//        
//        print(bosluqlar + ulduzlar)
//    }
//}
//
//printPyramid(hündürlük: 4)




