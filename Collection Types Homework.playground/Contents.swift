import UIKit

//Collection Types
//Sual 1
//let numbers = [3,7,2,9,1]

//reduce ile

//func massivCəmi (massiv: [Int]) -> Int {
//    return massiv.reduce(0, +)
//}
//print(massivCəmi(massiv: numbers))

//diger reduce

//func massivCəmi (massiv: [Int]) -> Int {
//    let sum = massiv.reduce(0){$0+$1}
//    return sum
//}
//print(massivCəmi(massiv: numbers))

//for ile

//func massivCəmi (massiv: [Int]) -> Int {
//    var sum = 0
//    for i in massiv {
//        sum += i
//    }
//    return sum
//}
//print(massivCəmi(massiv: numbers))

//Sual 2

//let scores = [45, 92, 78, 100, 55]
//
//func maxQiymet(massiv: [Int])-> Int?{
//    guard !massiv.isEmpty  else {
//        return nil
//    }
//    return massiv.max()
//}
//
//if let enBoyukQiymet = maxQiymet(massiv: scores) {
//    print(enBoyukQiymet)
//} else {
//    print("Massiv boşdur, heç bir qiymət tapılmadı")
//}


//basqa yol
//
//func maxQiymet(massiv: [Int])-> Int?{
//    if massiv.isEmpty{
//        return nil
//    }
//    var maxQiy : Int = massiv [0]
//    for i in massiv {
//        if i>maxQiy{
//            maxQiy=i
//        }
//    }
//    return maxQiy
//}
//
//if let boyukEded = maxQiymet(massiv: scores) {
//    print(boyukEded)
//} else {
//    print("Massiv boşdur")
//}


// Sual 3

//
//let nums = [1,2,3,4,5,6,7,8,9,10]
//func cutEdedler (massiv: [Int]) {
//    if massiv.isEmpty{
//        print("Massiv boşdur")
//        return
//    }
//
//    var cutEdedTapıldı = false
//
//    for i in massiv{
//        if i % 2 == 0{
//          print(i)
//          cutEdedTapıldı = true
//        }
//    }
//
//    if !cutEdedTapıldı {
//            print("Cüt ədəd tapılmadı")
//        }
//}
//
//cutEdedler(massiv: nums)

//basqa yolla

//func cutEdedler (massiv: [Int])->[Int]? {
//    var netice:[Int] = []
//    for i in massiv{
//        if i % 2 == 0{
//            netice.append(i)
//        }
//    }
//    if netice.isEmpty{
//        return nil
//    }
//   return netice
//}
//if let cut=cutEdedler(massiv: nums){
//    print(cut)
//}
//else{
//    print("Massiv bosdur")
//}


//Sual 4

//let arr=["a","b","c","d","e","f","g","h","i","j","k"]
//let say=arr.count
//for i in 0..<say{
//    print(arr[say-1-i])
//}

//reversed()

//func tersine(massiv:[String])->[String]?{
//    if massiv.isEmpty{
//        return nil
//    }
//    var ters: [String] = []
//    for i in massiv.reversed(){
//        ters.append(i)
//    }
//    return ters
//}
//if let netice=tersine(massiv: arr){
//    print(netice)
//}
//else{
//    print("Massiv bosdur")
//}


//Sual 5
//
//let data=[1,2,2,3,4,5,6,3,7,8,9,10,5]
//func unikal(massiv:[Int])->[Int]?{
//    if massiv.isEmpty{
//        return nil
//    }
//    var unikalmassiv: [Int] = []
//    for i in massiv{
//        if !unikalmassiv.contains(i){
//            unikalmassiv.append(i)
//        }
//    }
//    return unikalmassiv
//}
//
//if let unikal=unikal(massiv: data){
//    print(unikal)
//}
//else{
//    print("Massiv boşdur")
//}


//Sual 6
//
//let sorted = [1, 3, 5, 7, 9, 11, 13]
//func binarySearch(massiv: [Int],eded:Int) -> Int? {
//    var low = 0
//    var high = massiv.count - 1
//    while low <= high {
//        let mid = low + (high-low) / 2
//        if massiv[mid] == eded {
//            return mid
//        } else if massiv[mid] < eded {
//            low = mid + 1
//        } else {
//            high = mid - 1
//        }
//    }
//    return nil
//}
//if let cavab = binarySearch(massiv: sorted, eded:13 ) {
//    print(cavab)
//} else {
//    print(-1)
//}

//Sual 7

//let a = [1, 3, 5, 7]
//let b = [2, 4, 6, 8]
//
//func massivBirlesdirme (massiv1:[Int],massiv2:[Int])->[Int]?{
//    if massiv1.isEmpty || massiv2.isEmpty{
//        return nil
//    }
//    var yeni: [Int] = []
//    for i in massiv1{
//        yeni.append(i)
//    }
//    for i in massiv2{
//        yeni.append(i)
//    }
//    return yeni
//}
//
//
//if let cavab = massivBirlesdirme(massiv1: a, massiv2: b) {
//    print(cavab)
//} else {
//    print("Massivlerden biri bosdur")
//}
//
//
////basqa yol
////
////func massivBirlesdirme(massiv1: [Int], massiv2: [Int]) -> [Int]? {
////    if massiv1.isEmpty || massiv2.isEmpty {
////        return nil
////    }
////    return massiv1 + massiv2
////}

//Sual 8
//
//let sentence = "alma armud alma gilas armud alma"
//
//func sozleriHesabla(cumle:String)->[String:Int]{
//    var sozleri:[String:Int] = [:]
//    var cariSoz=""
//    for hərf in cumle {
//        if hərf == " " {
//            if !cariSoz.isEmpty {
//
//                if sozleri[cariSoz] != nil {
//
//                    sozleri[cariSoz] = sozleri[cariSoz]! + 1
//                } else {
//
//                    sozleri[cariSoz] = 1
//                }
//
//                cariSoz = ""
//            }
//        } else {
//            cariSoz.append(hərf)
//        }
//    }
//
//    if !cariSoz.isEmpty {
//        if sozleri[cariSoz] != nil {
//            sozleri[cariSoz] = sozleri[cariSoz]! + 1
//        } else {
//            sozleri[cariSoz] = 1
//        }
//    }
//
//    return sozleri
//}
//
//let netice = sozleriHesabla(cumle: sentence)
//
//print(netice)


//Sual 9
//let items = ["cat", "dog", "cat", "bird", "cat", "dog"]
//func enCoxTekrarlanan(massiv:[String])->String?{
//    if massiv.isEmpty{
//        return ""
//    }
//    var sayi: [String: Int] = [ : ]
//    for element in massiv {
//        if sayi[element] != nil {
//            sayi[element] = sayi[element]! + 1
//        } else {
//            sayi[element] = 1
//        }
//    }
//    var coxTekrarlanan = massiv[0]
//    var enBoyukSay = 0
//
//    for (soz, say) in sayi {
//        if say > enBoyukSay {
//            enBoyukSay = say
//            coxTekrarlanan = soz
//        }
//    }
//
//    return coxTekrarlanan
//}
//
//if let soz = enCoxTekrarlanan(massiv: items) {
//    print(soz)
//} else {
//    print("Massiv boşdur")
//}

//Sual 10
//let d1 = ["a": 1, "b": 2]
//let d2 = ["b": 10, "c": 3]
//
//func lügətləriBirləşdir(d1: [String: Int], d2: [String: Int]) -> [String: Int] {
//    var netice = d1
//
//    for (acar, deyer) in d2 {
//        netice[acar] = deyer
//    }
//
//    return netice
//}
//
//print(lügətləriBirləşdir(d1: d1, d2: d2))

//func lügətləriBirləşdir(d1: [String: Int], d2: [String: Int]) -> [String: Int] {
//    var netice = d1
//
//    netice.merge(d2) { (kohne, yeni) in yeni }
//    //netice.merge(d2) { $1 }
//    return netice
//}
//
//let cavab = lügətləriBirləşdir(d1: d1, d2: d2)
//print(cavab)


//Sual 11
//let names = ["Ali", "Leyla", "Tur", "Nigar", "Anar"]
//func adlariUzunlugaGoreQrupla(telebeler: [String]) -> [Int: [String]] {
//    var qruplanmisLuget: [Int: [String]] = [:]
//    for ad in telebeler {
//        let uzunluq = ad.count
//        if qruplanmisLuget[uzunluq] != nil {
//
//            qruplanmisLuget[uzunluq]!.append(ad)
//        } else {
//
//            qruplanmisLuget[uzunluq] = [ad]
//        }
//    }
//
//    return qruplanmisLuget
//}
//
//let netice = adlariUzunlugaGoreQrupla(telebeler: names)
//
//print(netice)


//// basqa yolla
////
//let qisa = Dictionary(grouping: names, by: { $0.count })
//
//print(qisa)

//Sual 12

//func isAnagram(soz1:String,soz2:String)->Bool{
//    if soz1.count != soz2.count { return false }
//    return soz1.sorted() == soz2.sorted()
//}

//basqa yol
//
//func isAnagram(soz1: String, soz2: String) -> Bool {
//    if soz1.count != soz2.count { return false }
//
//    var herfSaygaci: [Character: Int] = [:]
//
//    for herf in soz1 {
//        if herfSaygaci[herf] != nil {
//            herfSaygaci[herf] = herfSaygaci[herf]! + 1
//        } else {
//            herfSaygaci[herf] = 1
//        }
//    }
//
//
//    for herf in soz2 {
//        if let mövcudSay = herfSaygaci[herf], mövcudSay > 0 {
//
//            herfSaygaci[herf] = mövcudSay - 1
//        } else {
//
//            return false
//        }
//    }
//
//    return true
//}
//
//print(isAnagram(soz1: "listen", soz2: "silent"))
//print(isAnagram(soz1: "hello", soz2: "world"))

//Sual 14
//let a = [1, 2, 3, 4, 5]
//let b = [3, 4, 5, 6, 7]
//
//func ortaqElementleriTap(massiv1: [Int], massiv2: [Int]) -> Set<Int> {
//    let set1 = Set(massiv1)
//    let set2 = Set(massiv2)
//
//    let ortaqlar = set1.intersection(set2)
//
//    return ortaqlar
//}
//
//
//
//let netice = ortaqElementleriTap(massiv1: a, massiv2: b)
//
//print(netice)

//Sual 15
//let x = [1, 2, 3, 4]
//let y = [3, 4, 5, 6]
//
//func ortaqOlmayanlariTap(massiv1: [Int], massiv2: [Int]) -> Set<Int> {
//
//    let set1 = Set(massiv1)
//    let set2 = Set(massiv2)
//
//
//    let ferqliler = set1.symmetricDifference(set2)
//
//    return ferqliler
//}
//
//
//let netice = ortaqOlmayanlariTap(massiv1: x, massiv2: y)
//
//print(netice)


//Sual 16
//let small: Set = [2, 4]
//let big: Set = [1, 2, 3, 4, 5]
//
//func isSubset(_ small: Set<Int>, of big: Set<Int>) -> Bool {
//    return small.isSubset(of: big)
//}
//
//
//let netice = isSubset(small, of: big)
//
//print(netice)


//basqa yol
//func isSubset(_ small: Set<Int>, of big: Set<Int>) -> Bool {
//    
//    for element in small {
//        
//        if !big.contains(element) {
//            return false
//        }
//    }
//    
//    return true
//}

//Sual 17
//
//let products = ["Çörək": 1.5, "Süd": 2.0,
//"Televizor": 500.0, "Kalem": 0.5]
//
//func ucuzMehsullariTap(mehsullar: [String: Double]) -> [String] {
//    var neticeMassivi: [String] = []
//    
//    for (ad, qiymet) in mehsullar {
//        if qiymet < 100.0 {
//            neticeMassivi.append(ad)
//        }
//    }
//    
//    return neticeMassivi
//}
//
//print(ucuzMehsullariTap(mehsullar: products))

//basqa yol
//func ucuzMehsullar(mehsullar: [String: Double]) -> [String] {
//    let netice = mehsullar
//        .filter { (ad, qiymet) in qiymet < 100.0 }
//        .map { (ad, qiymet) in ad }
//    
//    return netice
//}
//
//
//print(ucuzMehsullar(mehsullar: products))

//basqa yol
//
//let netice = products.filter { $1 < 100.0 }.map { $0 }
//print(netice)
