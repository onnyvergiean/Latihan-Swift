var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "Sixteen"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ" : "Toronto Pearson", "DUB" : "Dublin"]

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty{
    print("Dictionary Empty")
}else{
    print("Dictionary Not Empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The Old Value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"]{
    print("Nama Bandara \(airportName)")
}else{
    print("Tidak Tersedia di Dictionary")
}

if let removedValue = airports.removeValue(forKey: "DUB"){
    print("Nama Bandara yang dihapus : \(removedValue)")
}else{
    print("DUB tidak terdapat di dictionary")
}


for (airportsCode, airportsName) in airports{
    print("\(airportsCode):  \(airportsName)")
}

for airportsCode in airports.keys{
    print("Airport Code : \(airportsCode)")
}

for airportsName in airports.values{
    print("Airport Name : \(airportsName)")
}

let airportsCode  = [String](airports.keys)
let airportsName  = [String](airports.values)