class SpaceShip
    def capture(unit)
        unit.dock
        transport_to_storage(unit)
    end

    def transport_to_storage(unit)
        puts "We are putting " + unit.to_s + " away"
    end

end

class Probe
    def deploy(deploy_time, return_time)
        
        puts "Deploying in " + deploy_time.to_s + " Seconds and returning in " + return_time.to_s + " seconds"
    end
    def dock
        puts "Docking probe"
    end
end

class MineralProbe < Probe
    def deploy(deploy_time)
        puts "preparing sample chamber"
        super(deploy_time, 45)
    end
end

class Lander
    def dock
        puts "Docking lander"
    end
end

MineralProbe.new.deploy(10)

ship = SpaceShip.new
probe = Probe.new
lander = Lander.new

ship.capture(probe)
ship.capture(lander)