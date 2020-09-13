print("Masukkan Nama Depan Anda : "); let firstName = String(readLine() ?? "")
print("Masukkan Nama Belakang Anda : "); let lastName = String(readLine() ?? "")
print("Berikut Operator Yang Digunakan")

//operator concatentation
let concatenationString = firstName + lastName
print("String Concatenation Operator : \"\(concatenationString)\"")


//operator mutability
var mutabilityString = ""
mutabilityString += firstName
mutabilityString += lastName
print("String Mutability Operator : \"\(mutabilityString)\"")

//operator comparison

var comparsionString = ""
if firstName == lastName{
    comparsionString = String(true)
}else{
    comparsionString = String(false)
}

print("String Comparsion Operator :\"\(comparsionString)\"")
print("----------------------------------")
print("Berikut Fungsi Yang Digunakan")

let fullName = firstName + " " + lastName
print("Fungsi Fullname : \"\(fullName)\"")

let empty = firstName.isEmpty || lastName.isEmpty
print("Fungsi isEmpty :\"\(empty)\"")

let startIndex = fullName[fullName.startIndex]
print("Fungsi startIndex :\"\(startIndex)\"")

let Index = fullName[fullName.index(after: fullName.startIndex)]
print("Fungsi Index : \"\(Index)\"")

let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy :5)]
print("Custom Index : \"\(customIndex)\"")

let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("End Index :\"\(endIndex)\"")

var insert = fullName
insert.insert("!", at:insert.endIndex)
print("Fungsi Inser : \"\(insert)\"")

var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("Fungsi remove : \"\(remove)\"")

var append = firstName
append.append(lastName)
print("Fungsi append : \"\(append)\"")

let count = fullName.count
print("Fungsi Length : \(count)")
