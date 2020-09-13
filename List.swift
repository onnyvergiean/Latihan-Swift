var listFruits = [String]()
var isRunning = true

func getInput(message : String) -> String?{
    print(message, terminator : ": ");
    return readLine()
}

func getInputInt(message: String) -> Int?{
    if let inputString = getInput(message: message){
        return Int(inputString)
    }else{
        return nil
    }
}

func showAllFruits(){
    if listFruits.isEmpty{
        print("Belum ada item di daftar")
    }else{
        for (index, value) in listFruits.enumerated(){
            print("[\(index + 1)] \(value)")
        }
    }
}

func insertFruits(){
    if let name = getInput(message : "Masukkan nama buah"){
        listFruits.append(name)
    }else{
        insertFruits()
        print("Input tidak valid")
    }
}

func editFruits(){
    showAllFruits()
    print("-----------------------")
    if let position = getInputInt(message: "Pilih posisi buah yang ingin diganti"), position<=listFruits.count && position>0, let name = getInput(message: "Masukkan nama buah") {
        listFruits[position-1] = name
    }else{
        editFruits()
        print("Input tidak valid")
    }
}

func deleteFruits(){
    showAllFruits()
    if let position = getInputInt(message : "Pilih posisis buah yang akan dihapus "),
    position<=listFruits.count && position>0{
        listFruits.remove(at: position-1)
    }else{
        deleteFruits()
        print("Input tidak valid")
    }
}

func showMenu(){
    print("Selamat Datang")
    print("Menu")
    print("1. Tampil Buah")
    print("2. Tambah Buah")
    print("3. Edit   Buah")
    print("4. Hapus  Buah")
    print("5. Keluar")
    if let position = getInputInt(message: "Silahkan Pilih Menu"), position<=5 && position>0{
        switch position{
        case 1:
            showAllFruits()
            break
        case 2:
            insertFruits()
            break
        case 3:
            editFruits()
            break
        case 4:
            deleteFruits()
            break
        case 5:
            isRunning = false
            print("Terima Kasih")
            break
        default:
            print("Pilihan Salah")
        }
    }else{
        print("Tidak Valid")
    }
}

while isRunning{
    showMenu()
}