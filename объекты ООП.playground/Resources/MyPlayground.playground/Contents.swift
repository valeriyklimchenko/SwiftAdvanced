protocol Home


class ApartmentHouse


struct Marerials


enum AppartmensOnFloor {
    case firstFloor(String)
    case secondFloor(Int)
}
let appartmensOn1Floor = AppartmensOnFloor.firstFloor
switch appartmensOn1Floor {
    case .firstFloor(print):
    print("on this floor there are apartments number 1, 2, 3, 4")
}
let appartmensOn2Floor = AppartmensOnFloor.secondFloor()
switch appartmensOn2Floor {
case .secondFloor():
    print("on this floor there are apartments number 5, 6, 7, 8")
}
