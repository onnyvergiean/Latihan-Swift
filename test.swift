

var welcomeMessage: String


let welcome = "onny"
print(welcome)
welcomeMessage = "Hello"
welcomeMessage = "Bonjour"
print(welcomeMessage)
print("The Current Value of welcome is \(welcome)")

var message = "Hello gan";print(message)
/*for i in 1...5 {
    print(i, terminator: "")
}*/

/*let twothousand : UInt16 = 2_000
let one : UInt8 = 1
let twothousandandone = twothousand + UInt16(one)
print (twothousandandone)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
print(pi)*/

/*typealias AudioSample = UInt8;
var maxAmplitudoFound = AudioSample.min;
print(maxAmplitudoFound)*/


let GrapesIsPurple = false

if GrapesIsPurple{
    print("Graps Good")
}else{
    print("Grapes Not Good")
}

let OrangeIsOrange = true
if OrangeIsOrange{
    print("Orange Mantap")
}else{
    print("Not Mantap")
}

//tuples
let http404Error = (404,"Not Found")
let (statusCode, statusMessage) = http404Error
print("The Status Code is \(statusCode)")
print("The Status Message is \(statusMessage)")

let (stsCode, _) = http404Error
print(stsCode)

print(http404Error.0)
print(http404Error.1)

let test = (statusCode: 200, statusMessage: 300)
print(test.statusCode)
print(test.statusMessage)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

//let convertedNumber : Int? =  123
//var serverRespondCode: Int? = 404
//serverRespondCode = nil
//var surveyAnswer: String?let convertedNumber : Int? =  123

if convertedNumber != nil {
   print("convertedNumber has an integer value of \(convertedNumber!).")
}


if let actualNumber = Int(possibleNumber){
    print("String \(possibleNumber) mempunyai nilai integer \(actualNumber)")
}else{
    print("String \(possibleNumber) tidak dapat diconvert")
}

/*func makeASandwich() throws{
    
}

do{
    try makeASandwich()
    eatASandiwch()
}catch SandichError.outOfCleanDishes{
    washDishes()   
}catch SandwichError.missigIngredients(let ingredients){
    buyGroceries(ingredients)
}*/

print("Masukkan Nama Depan Anda : "); let firstname = readLine()!
print("Masukkan Nama Belakang Anda : "); let lastname = readLine()!
print("Masukkan Umur Anda : "); let age = readLine()!
print("Masukkan Alamat Anda : "); let address = readLine()!
print("Masukkan Pekerjaan Anda : "); let job = readLine()!

let fullname = firstname + " " + lastname
print("Nama Anda : \(fullname)")
print("Umur Anda : \(age)")
print("Alamat    : \(address)")
print("Pekerjaan : \(job)")