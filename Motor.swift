func getInput(message: String) -> String?{
    print(message, terminator : ": ")
    return readLine()
}

func getInputInt(message: String) -> Int?{
    if let inputString = getInput(message: message){
        return Int(inputString)
    }else{
        return nil
    }
}

var speedTotal = 0 

func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    func incrementer() -> Int{
        speedTotal += amount
        return speedTotal
    }
    return incrementer
}


func makeDecrementer(forDecrementer amount: Int) -> () -> Int{
    func decrementer() -> Int{
        speedTotal -= amount
        return speedTotal
    }
    return decrementer
} 

let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrementer: 10)

func turnOnEngine(){
    print("Hidupkan Mesin")
    print("Selamad Datang")
}

func turnOffEngine(){
    print("Stop")
    print("Mesin Mati")
}

func showSpeed(){
    print("Kecepatan Saat Ini : \(speedTotal)")
}

func action(){
    print("1. Tambah Kecepatan")
    print("2. Kurangi Kecepatan")
    print("3. Mtaikan Mesin")
    if let state = getInputInt(message: "Masukkan "){
        switch state{
        case 1:
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2:
            if speedTotal > 0{
                speedTotal = decrementByTen()
                showSpeed()
                action()
            }else{
                turnOffEngine()
                break
            }
        case 3:
             turnOffEngine()
             break
        default:
            print("Input Salah")
        }
    }
}

turnOnEngine()
action()