


protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    
    
    func chargeBattery() -> Void
    func checkBatteryLevel() -> Void
}
 
protocol EntertainmentSystem {
    var hasTv: Bool { get set }
    
    func turnOnTv() -> Void
    func turnOffTv() -> Void
}


class Camper: ElectricitySystem, EntertainmentSystem {
    var batteryLevel: Double
    var hasTv: Bool
    
    init() {
        self.batteryLevel = 20
        self.hasTv = true
    }
    
    func turnOnTv() -> Void {
        if self.hasTv {
            print(" Tv now playing")
            self.hasTv = !self.hasTv
        }
        else {
            print(" Tv already on")
        }
    }
    func turnOffTv() -> Void {
        if self.hasTv {
            print("TV turned off")
            self.hasTv = !self.hasTv
        }
        else {
            print(" Tv already off")
        }
    }
    func checkBatteryLevel() {
        let lowBattery = 20.0
        let maxBattery = 100.0
        
        if batteryLevel < lowBattery {
            print( "Battery Low ") // Charging
        } else {
            if batteryLevel >= maxBattery {
                print("Battery Full")
            } else {
                print("Already at max battery level")
            }
        }
        print("Battery level now at: \(batteryLevel)%")
    }
    func chargeBattery() {
        var batteryLow = 10.0
        if batteryLevel < batteryLow {
            batteryLevel += 1 // Charging
        } else {
        }
    }
}
 var aCamper = Camper()
aCamper.hasTv
aCamper.turnOnTv()
aCamper.turnOnTv()
aCamper.checkBatteryLevel()
aCamper.chargeBattery()
aCamper.batteryLevel

protocol Traiiler {
    var brand: String { get set }
    
    func startEngine() -> Void
    func stopEngine() -> Void
}
protocol WaterSystem {
    var waterCapacity: Double { get set }
    
        func fillWaterTank() -> Void
        func drainWaterTank() -> Void
    }
protocol ClimateControl {
    var temperature: Double { get set }
    
    func setTemperature() -> Void
    func adjustFanSpeed() -> Void
}
