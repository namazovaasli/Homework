import UIKit

//Sual 1
//func metnleriBirlesdir(soz1: String, soz2: String) -> String {
//    return soz1 + " " + soz2
//}
//
//let netice1 = metnleriBirlesdir(soz1: "Salam", soz2: "Bakı")
//print(netice1)

//Sual 2
//func salamla(ad: String, dil: String = "AZ") {
//    if dil == "TR" {
//        print("Merhaba, \(ad)")
//    } else {
//        print("Salam, \(ad)")
//    }
//}
//
//
//salamla(ad: "Əli")
//salamla(ad: "Can", dil: "TR")

//Sual 3
//func minMax(massiv: [Int]) -> (min: Int, max: Int) {
//    if massiv.isEmpty { return (0, 0) }
//    
//    var enKicik = massiv[0]
//    var enBoyuk = massiv[0]
//    
//    for eded in massiv {
//        if eded < enKicik {
//            enKicik = eded
//        }
//        if eded > enBoyuk {
//            enBoyuk = eded
//        }
//    }
//    
//    return (enKicik, enBoyuk)
//}
//
//let reqemler = [5, 12, 2, 24, 9]
//let netice3 = minMax(massiv: reqemler)
//print("Min: \(netice3.min), Max: \(netice3.max)")

//Sual 4
//func faizHesabla(məbləğ pul: Double, faizlə dərəcə: Double) -> Double {
//    return (pul * dərəcə) / 100
//}
//
//let faiz = faizHesabla(məbləğ: 1000, faizlə: 18)
//print(faiz)

//Sual 5
//func reqemlerCemi(_ eded: Int) -> Int {
//    var say = eded
//    var cem = 0
//    
//    while say > 0 {
//        cem += say % 10
//        say = say / 10
//    }
//    
//    return cem
//}
//
//let cemNetice = reqemlerCemi(523)
//print(cemNetice)

//Sual 6
// Dairənin sahəsi
//func sahəHesabla(radius: Double) -> Double {
//    let pi = 3.14159
//    return pi * radius * radius
//}
//
//// Düzbucaqlının sahəsi
//func sahəHesabla(en: Double, hündürlük: Double) -> Double {
//    return en * hündürlük
//}
//
//// Üçbucağın sahəsi ( 0.5 * a * b * c)
//func sahəHesabla(a: Double, b: Double, c: Double) -> Double {
//    return 0.5 * a * b * c
//}
//
//
//print(sahəHesabla(radius: 3))              // Dairə
//print(sahəHesabla(en: 4, hündürlük: 5))    // Düzbucaqlı
//print(sahəHesabla(a: 3, b: 4, c: 2))       // Üçbucaq

//Sual 7
//func squareOfNum(num: inout Int) {
//    num = num * num
//}
//
//var mənimƏdədim = 5
//squareOfNum(num: &mənimƏdədim)
//print(mənimƏdədim)

//Sual 8
//... qoyuruq, bu zaman Swift daxildə onu massiv kimi qəbul edir
//func ortalama(_ ededler: Double...) -> Double {
//    if ededler.isEmpty { return 0.0 }
//    
//    var cem = 0.0
//    for eded in ededler {
//        cem += eded
//    }
//    
//    return cem / Double(ededler.count)
//}
//
//print(ortalama(10.0, 20.0, 30.0, 40.0))

//Sual 9
//func skoruSiralayin(s1: inout Int, s2: inout Int, s3: inout Int) {
//    if s1 < s2 {
//        let kecici = s1; s1 = s2; s2 = kecici
//    }
//    
//    if s1 < s3 {
//        let kecici = s1; s1 = s3; s3 = kecici
//    }
//
//    if s2 < s3 {
//        let kecici = s2; s2 = s3; s3 = kecici
//    }
//}
//
//var skor1 = 45
//var skor2 = 78
//var skor3 = 92
//
//skoruSiralayin(s1: &skor1, s2: &skor2, s3: &skor3)
//
//print(skor1)
//print(skor2)
//print(skor3)
