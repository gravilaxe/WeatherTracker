import Foundation

class weatherData:Identifiable, Decodable{
    var location = locationData()
}


class locationData: Identifiable, Decodable{
    var name = ""
    var region = ""
    var country = ""
    var lat = 0.0
    var lon = 0.0
    var tz_id = ""
    var localtime_epoch = 0
    var localtime = ""
}

class currentData: Identifiable, Decodable{
    var last_updated_epoch:Int
}


