class CargoHold
    def initialize(cargo_hold)
        @cargo_hold_amount = cargo_hold
    end
end

class SpaceShip
    def initialize(name, cargo_module_count)
        @name = name
        @cargo_hold = CargoHold.new(cargo_module_count)
        @power_level = 100
    end
end

ship = SpaceShip.new("Destroyer", 4)
p ship