print("Selamat Datang di Dicoding Resto!")
print("Mari Membuat Makanan!")
print("---------------------")
print("Apa yang Anda ingin buat?"); let food = readLine() ?? ""
print("Masukkan jumlah item yang ingin Anda Masukkan", terminator: ": "); let newItem = readLine() ?? "0"

if let totalItem : Int = Int(newItem){
    var recipe = [String]()
    for index in 1...totalItem{
        print("Masukkanlah item ke \(index)", terminator : ": "); let newItem = String(readLine() ?? "")
        recipe.append(newItem)
    }
    
    print("--------------------------")
    print("Berapa lama proses memasak dilakukan?"); let time = readLine() ?? ""
    print("--------------------------")
    recipe.sort()
    print("Anda akan membuat \(food) selama \(time) dengan resep:")
    for (index, value) in recipe.enumerated(){
        print("\(index + 1). \(value)")
    }
}else{
    print("Input Tidak Valid")
}

