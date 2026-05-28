import UIKit

// Swift Quizs

//Sual 1
//let age = 25
//age = 26

//Burada xəta var çünki let dəyişə bilməyən propertidir, əgər dəyişəni dəyişdirəcəyiksə var etməliyik.

//var age = 25
//age = 26
//print(age)


// Sual 2
//var name: String = "Anar"
//var score: Double = 9.5
//var isPassed: Bool = true
//print("\(name): \(score), keçdi: \(isPassed)")

//Çap edir : Anar: 9.5, keçdi : true

//Sual 3
//var phone: String? = nil
//phone = "Iphone 15"

//let telefon = phone ?? "Yoxdur telefon"
//print(telefon)

//
//if let phone {
//    print(phone)
//}
//else {
//    print("Telefon yoxdur")
//}

//Sual 4:
//var email: String? = "test@example.com"
//
//if let email {
//    print(email)
//}
//else {
//    print("Email boşdur")
//}

//Sual 5
//func printEmail(_ email: String?) {
//    guard let gelenemail = email else {
//        print("Email boşdur")
//        return
//    }
//    print(gelenemail)
//}
//
//printEmail(nil)

//Sual 6
//let color = "red"
//switch color {
//case "red":
//    print("Qırmızı")
//case "green":
//    print("Yaşıl")
//case "blue":
//    print("Mavi")
//default:
//    print("Default")
//}


// Sual 7
//for i in 1...10 where i%2==0 {
//    print(i)
//}

//Sual 8
//var cem = 0
//var ilkeded = 1
//while ilkeded<=100{
//    cem += ilkeded
//    ilkeded += 1
//}
//

//let cem = (1...100).reduce(0, +)

//print(cem)

//Sual 9
//func ceminiqaytaran(a: Int, b: Int)-> Int {
//    var c = a+b
//   return c
//}
//print(ceminiqaytaran(a: 15, b: 20))

//Sual 10
//
//func greeting(name: String = "Dünya")->String{
//    let greeting = "Salam \(name)"
//    return greeting
//}
//print(greeting(name: "Asli"))
//
//print(greeting())

// başqa yol
//
//func greeting(_ name: String = "Dünya")->String{
//    let greeting = "Salam \(name)"
//    return greeting
//}
//print(greeting( "Asli"))

//Sual 11
//func generic <T> (_ array :[T]) {
//    for item in array {
//        print(item)
//    }
//}
//let names = ["Asli","Ali","Swift",]
//generic(names)
//
//let numbers = [10,20,30]
//generic(numbers)
//
//let doubles = [5.5,6.6,7.7]
//generic(doubles)

//Sual 12
//func mystery(_ n: Int) -> Int {
//guard n > 0 else { return 0 } // 4>0 sertini odeyir, kecir digerine // 4+ mystery(3)
//mystery (3)   3>0 sertini odeyir, 3+ mystery (2)
//mystery (2)   2>0 sertini odeyir,2 + mystery (1)
// mystery (1)  1>0 sertini odeyir, 1 + mystery (0)
// mystery (0)  0 oldugu ucun artiq dayanir ve return edir 0
//mystery(0)=0   mystery (1)= 1+0 = 1           mystery (2) = 2+1 =3   mystery (3) = 3 +3 = 6       mystery (4)= 4 + 6 = 10
//return n + mystery(n - 1)
//}
//print(mystery(4)) //10 alinir


//dayanma şərti 0>0 serti sehvdir, guard bloku ise dusur ve funksiya derhal 0 qaytarir ve dayanir

//Sual 13
//Swift-də funksiyalara ötürülən bütün parametrlər standart olaraq let (yəni sabit/constant) kimi qəbul edilir. Bu o deməkdir ki, funksiyanın daxilində bizə ötürülən arqumentin dəyərini dəyişdirə bilmərik
//Əgər bir funksiyanın daxilində xaricdən gələn dəyişənin əsl dəyərini birbaşa dəyişmək və bu dəyişikliyin funksiyadan kənarda da qalmasını istəyiriksə, inout parametrindən istifadə edirik
//
//Buna proqramlaşdırmada "Pass-by-Reference" (Ünvana görə ötürmə) deyilir
//İki dəyişənin dəyərini bir-biri ilə dəyişmək (swap etmək) inout parametrinin ən klassik nümunəsidir
//
//func swap(_ a:inout Int, _ b:inout Int){
//    let ilkindeyer = a
//    a = b
//    b = ilkindeyer
//}
//
//inout parametri olan funksiyaları çağırarkən iki mühüm qayda var:
//Ötürülən dəyişənlər mütləq var (dəyişdirilə bilən) olmalıdır (let olmaz)
//Dəyişənin adının qarşısına & (ampersand) işarəsi qoyulmalıdır. Bu işarə Swift-ə deyir ki: "Mən dəyişənin sadəcə kopyasını yox, onun yaddaşdakı ünvanını (özünü) göndərirəm"                   Swift-ə funksiyanın daxilində bu dəyişəni birbaşa modifikasiya etməyə icazə verir
//
//var x = 5
//var y = 10
//
//print ("Dəyişməzdən əvvəl : x = \(x) , y =\(y)")
//
//swap(&x, &y)
//print("Dəyişdikdən sonra : x = \(x) , y = \(y)")

//Niyə ilkindəyər istifadə etdik? Çünki a = b etdiyimiz anda a-nın daxilindəki köhnə rəqəm (5) itir. Onu itirməmək və sonra b-yə verə bilmək üçün müvəqqəti bir yerdə saxlayırıq



//Sual 14
//Closure  — Swift dilində sərbəst şəkildə ortalıqda gəzə bilən, dəyişənlərə mənimsədilə bilən və başqa funksiyalara parametr kimi ötürülə bilən funksiya bloklarıdır
//
//Sadə dillə desək, closure adı olmayan funksiyadır. Funksiyalar əslində closure-ların xüsusi bir növüdür. Closure-ların ən böyük gücü, yaradıldıqları mühitdəki dəyişənləri yaddaşda saxlayıb (capture edib) sonra da istifadə edə bilmələrindədir

//Closure — özündə saxlaya biləcəyin, ötürə biləcəyin və istədiyin vaxt çağıra biləcəyin bir kod blokudur. Funksiyaya çox bənzəyir, amma adı yoxdur və yarandığı mühitin dəyişənlərini “yadda saxlaya” bilir

//Sadə closure sintaksisi :
//{ (paramatrlər) -> Qayıdan_Tip in
//    // İcra olunacaq kodlar
//}
//in açar sözü: Closure-ın parametrləri və qayıdan tipinin təyini ilə closure-ın daxili gövdəsini (kod blokunu) bir-birindən ayırır

//İki ədədi toplayan closure:
//let sumClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a + b
//}
//
//
//let result = sumClosure(5, 10)
//print(result) // 15


//let sumClosure: Closure-ı bir dəyişənə (və ya sabitə) mənimsədirik ki, sonra onu funksiya kimi çağıra bilək

//: (Int, Int) -> Int: Bu, closure-ın tipidir. Swift-ə deyirik ki, bu closure daxilinə iki ədəd alacaq və geriyə bir ədəd qaytaracaq

//{ (a: Int, b: Int) -> Int in ... }: Closure-ın bədənidir. a və b gələn parametrlərin adlarıdır

//return a + b: Daxil olan ədədləri toplayıb nəticəni geri göndərir

//ve ya
//let topla: (Int, Int) -> Int = { a, b in
//    return a + b
//}
//
//print(topla(3, 5)) // 8

//(Int, Int) -> Int — tip annotasiyasıdır (iki Int alır, bir Int qaytarır)
//{ (a, b) in ... } — closure-un özüdür
//in açar sözü imzanı gövdədən ayırır

//Yuxarıdakı uzun kodu tipləri avtomatik təyin etmə (Type Inference) və xüsusi dollar işarələri ($0, $1) vasitəsilə inanılmaz dərəcədə qısaldaq

//let shortSumClosure = { (a: Int, b: Int) in a + b }

// Və ya daha qısa (Parametr adlarını tamamilə ataraq):
//let ultraShortSum: (Int, Int) -> Int = { $0 + $1 }

//print(ultraShortSum(20, 30)) // 50

//$0 və $1 nədir? Swift-də closure-a gələn birinci parametrə $0, ikinciyə $1, üçüncüyə $2 (və s.) deyərək ad vermədən birbaşa istifadə edə bilərik


//Sual 15

//let square: (Int) -> Int = { (x: Int) -> Int in
//return x * x
//}

//qisaldilmis :
//let square: (Int) -> Int = { $0 * $0 }


// basqa versia

//let square: (Int) -> Int = { x in x * x }

//print(square(5))

//Sual 16
//let numbers = [3, 1, 5, 2, 4]
//
//let sortedNumbers = numbers.sorted(by: { (a: Int, b: Int) -> Bool in
//    return a > b
//})

//qisaldilmis
//let sortedNumbers = numbers.sorted{ $0 > $1 }


//print(sortedNumbers)


//Sual 17

//func doSomething(action: () -> Void) {
//print("Başladı")
//action()
//print("Bitdi")
//}
//doSomething(action: { print("İşləyirəm") })

//Trailing Closure

//doSomething {
//    print("İşləyirəm")
//}
//Trailing Closure — Swift dilində kodun oxunurluğunu artırmaq üçün yaradılmış möhtəşəm bir sintaksis rahatlığıdır
//Əgər bir funksiyanın sonuncu parametrisi bir closure-dırsa (yəni funksiya qəbul edirsə), siz həmin closure-ı funksiyanın mötərizələrinin xaricinə, yəni funksiyanın düz sonuna köçürə bilərsiniz. Belə olduqda parametr adını (məsələn, action:) yazmağa ehtiyac qalmır

//Əgər funksiyanın başqa heç bir parametrisi yoxdursa, funksiyanın normal mötərizələrini () tamamilə silmək də mümkündür

//func doSomething(action: () -> Void) {
//    print("Başladı")
//    action()
//    print("Bitdi")
//}

// Funksiyanın trailing closure ilə çağırılması:
//doSomething {
//    print("İşləyirəm")
//}
// Başladı
// İşləyirəm
// Bitdi


//Sual 18

//let nums = [1, 2, 3, 4, 5]
//let doubledNums = nums.map { num in
//    num * 2
//}

//qisaldilmis
//let doubledNums = nums.map { $0 * 2 }

//print(doubledNums)

//map funksiyası nums massivindəki hər bir ədədi (sırayla 1, 2, 3...) tək-tək götürür
//Götürdüyü hər bir ədədi $0 yerinə qoyaraq 2-yə vurur

//Sual 19
//let nums = [1, 2, 3, 4, 5, 6, 7, 8]

//let evenNumbers = nums.filter { num in
//    num % 2 == 0
//}
//qisaldilmis
//let evenNumbers = nums.filter { $0 % 2 == 0 }


//print(evenNumbers)

//filter funksiyası massivi sırayla gəzir
//Hər bir ədədi $0 yerinə qoyur: məsələn, == 0 şərti false olduğu üçün 1-i atır; == 0 şərti true olduğu üçün 2-ni yeni massivə götürür
//Sonda yalnız şərti ödəyən cüt ədədlərdən ibarət yeni bir massiv qaytarır

//Sual 20
//let nums = [1, 2, 3, 4, 5]
//
//let totalSum = nums.reduce(0){
//    sum,num in sum + num
//}

//qisaldilmis
//let totalSum = nums.reduce(0) { $0 + $1 }

// daha qisa
//let totalSum = nums.reduce (0,+)

//print(totalSum) //15


//Sual 21
//let numbers = [1,2,3,4,5,162,292]
//
//let result = numbers
//    .filter { $0 % 2 == 0 } //  cüt ədədləri seçir
//    .map { $0 * $0 }        // Hər birini kvadrata yüksəldir
//    .reduce(0, +)           // Hamısını toplayır
//
//print(result)

//Sual 22
//Swift-də funksiyaya parametr kimi ötürülən closure-lar standart olaraq non-escaping (qaça bilməyən) qəbul edilir. Bu o deməkdir ki, closure funksiyanın daxilində dərhal icra olunmalı və funksiya bitməmişdən əvvəl öz işini tamamlamalıdır. Funksiya bitdikdən sonra həmin closure yaddaşdan silinir

//Əgər closure funksiya bitdikdən sonra da yaddaşda qalmalı və daha gec (məsələn, 2-3 saniyə sonra, şəbəkə sorğusu bitəndə və ya hər hansı bir asinxron proses tamamlananda) icra olunmalıdırsa, onun qarşısına @escaping açar sözü yazılır. Bu, Swift-ə deyir ki: "Bu closure-u dərhal silmə, funksiya bitsə də, onu yaddaşda saxla, çünki bir az sonra lazım olacaq."

//Sual 23
//Capture List (Yaddaşa alma siyahısı) — Swift-də closure-ların ətrafındakı dəyişənləri və ya obyektləri (məsələn, self-i) yaddaşda necə saxlayacağını idarə etmək üçün istifadə olunan bir qaydalar siyahısıdır

//Sual 24
//Swift-də bir closure öz xaricindəki bir dəyişəni istifadə edəndə, həmin dəyişənin sadəcə o anki kopyasını (dəyərini) götürmür

//O, dəyişənin yaddaşdakı özünə (istinadına/reference-ına) bağlanır. Yəni closure x dəyişənini "gözaltı edir" və onun başına gələn bütün dəyişiklikləri canlı olaraq izləyir

// Sual 25
//Swift-də $0, $1, $2 kimi ifadələrinə Shorthand Argument Names (Qısaldılmış arqument adları) deyilir. Bunlar closure daxilinə gələn parametrlərin adlarını tək-tək yazmaq məcburiyyətindən qaçmaq üçün istifadə olunan hazır əvəzedicilərdir

//Swift gələn parametrləri növbəsinə görə avtomatik nömrələyir:$0 - Closure-a gələn birinci parametr            $1 - Closure-a gələn ikinci parametr                        $2 - Closure-a gələn üçüncü parametr (və s.. davam edir)

//Bunlardan istifadə etdiyimiz zaman closure-ın başında parametrlərin adlarını, tiplərini yazmağa və in açar sözünü qoymağa ehtiyac qalmır. Kod vizual olaraq təmizlənir və qısalır

//let multiply = { (a: Int, b: Int) -> Int in
//    return a * b
//}
//qisalmis
//let multiply: (Int, Int) -> Int = { $0 * $1 }


//print(multiply(4, 5))  //20


//Sual 27

//func makeCounter() -> () -> Int {
//var count = 0
//return { count += 1; return count }
//}
//let c1 = makeCounter()
//let c2 = makeCounter()
//print(c1(), c1(), c2())  // 0 + 1 = 1
// 1 + 1 = 2
//0 + 1 = 1

// netice = 1 2 1

//Sual 28
//let words = ["Alma", "Nar", "Qarpız", "Gilas", "Ərik"]
//
//let sortedWords = words.sorted { s1, s2 in
//    s1.count < s2.count
//}
//qisaldilmis
//let sortedWords = words.sorted { $0.count < $1.count }

//print(sortedWords)


//Sual 29
//let strings = ["1", "iki", "3", "dörd", "5"]
//
//let validNumbers = strings.compactMap { str in
//    Int(str)
//}
//qisaldilmis
//let validNumbers = strings.compactMap { Int($0) }

//print(validNumbers)

//Sual 30
//let fruits = ["alma", "armud", "gilas"]
//
//fruits.forEach { fruit in
//    print(fruit)
//}

//Sual 31
//let nums = [1, 3, 5, 6, 7, 8]
//
//if let firstEven = nums.first(where: { num in num % 2 == 0 }) {
//    print(firstEven)
//} else {
//    print("Cüt ədəd tapılmadı")
//}
//qisaldilmis
//let firstEven = nums.first { $0 % 2 == 0 }
//
//print(firstEven ?? "Tapılmadı")

//Sual 33
//func apply(_ f: (Int) -> Int, to n: Int) -> Int { f(n) }
//let double = { $0 * 2 }
//let addTen = { $0 + 10 }
//print(apply(double, to: 5))
//print(apply(addTen, to: 5))

//10 ve 15



